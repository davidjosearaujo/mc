package android.support.v4.view.animation;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
class PathInterpolatorApi14 implements Interpolator {
    private static final float PRECISION = 0.002f;
    private final float[] mX;
    private final float[] mY;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PathInterpolatorApi14(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i = ((int) (length / PRECISION)) + 1;
        this.mX = new float[i];
        this.mY = new float[i];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < i; i2++) {
            pathMeasure.getPosTan((i2 * length) / (i - 1), fArr, null);
            this.mX[i2] = fArr[0];
            this.mY[i2] = fArr[1];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PathInterpolatorApi14(float f, float f2) {
        this(createQuad(f, f2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PathInterpolatorApi14(float f, float f2, float f3, float f4) {
        this(createCubic(f, f2, f3, f4));
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        int i;
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f < 1.0f) {
            int i2 = 0;
            int length = this.mX.length - 1;
            while (length - i2 > 1) {
                int i3 = (i2 + length) / 2;
                if (f < this.mX[i3]) {
                    i = i2;
                } else {
                    int i4 = length;
                    i = i3;
                    i3 = i4;
                }
                i2 = i;
                length = i3;
            }
            float f2 = this.mX[length] - this.mX[i2];
            if (f2 == 0.0f) {
                return this.mY[i2];
            }
            float f3 = (f - this.mX[i2]) / f2;
            float f4 = this.mY[i2];
            return (f3 * (this.mY[length] - f4)) + f4;
        }
        return 1.0f;
    }

    private static Path createQuad(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
        return path;
    }

    private static Path createCubic(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        return path;
    }
}