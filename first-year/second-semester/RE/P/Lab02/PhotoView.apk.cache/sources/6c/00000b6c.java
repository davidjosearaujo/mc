package com.google.zxing.datamatrix.encoder;

import android.support.v4.view.InputDeviceCompat;
import android.support.v7.widget.helper.ItemTouchHelper;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Base256Encoder.java */
/* loaded from: classes.dex */
public final class b implements g {
    public int a() {
        return 5;
    }

    @Override // com.google.zxing.datamatrix.encoder.g
    public void a(h hVar) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!hVar.g()) {
                break;
            }
            sb.append(hVar.b());
            hVar.f639a++;
            int a2 = j.a(hVar.a(), hVar.f639a, a());
            if (a2 != a()) {
                hVar.b(a2);
                break;
            }
        }
        int length = sb.length() - 1;
        int d = hVar.d() + length + 1;
        hVar.c(d);
        boolean z = hVar.i().f() - d > 0;
        if (hVar.g() || z) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else if (length <= 1555) {
                sb.setCharAt(0, (char) ((length / ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION) + 249));
                sb.insert(1, (char) (length % ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION));
            } else {
                throw new IllegalStateException("Message length not in valid ranges: " + length);
            }
        }
        int length2 = sb.length();
        for (int i = 0; i < length2; i++) {
            hVar.a(a(sb.charAt(i), hVar.d() + 1));
        }
    }

    private static char a(char c, int i) {
        int i2 = ((i * 149) % 255) + 1 + c;
        return i2 <= 255 ? (char) i2 : (char) (i2 + InputDeviceCompat.SOURCE_ANY);
    }
}