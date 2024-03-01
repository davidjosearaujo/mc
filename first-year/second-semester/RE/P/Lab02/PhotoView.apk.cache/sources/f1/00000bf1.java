package com.mbv.a.wp;

import android.app.WallpaperManager;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.mbv.a.wp.adapter.PreviewImagesAdapter;
import com.mbv.a.wp.base.activity.BaseFragmentActivity;
import com.mbv.a.wp.c.b;
import com.mbv.a.wp.view.indicator.UnderlinePageIndicator;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

/* loaded from: classes.dex */
public class PreviewImagesActivity extends BaseFragmentActivity implements ViewPager.OnPageChangeListener, View.OnClickListener {
    private static final String l = Environment.getExternalStorageDirectory() + "/download/";

    /* renamed from: a  reason: collision with root package name */
    ViewPager f709a;
    UnderlinePageIndicator b;
    private ImageView c;
    private TextView d;
    private TextView e;
    private String f;
    private Bitmap g;
    private ImageView h;
    private List<String> i;
    private ProgressBar j;
    private String k;
    private Runnable m = new Runnable() { // from class: com.mbv.a.wp.PreviewImagesActivity.1
        @Override // java.lang.Runnable
        public void run() {
            Bitmap a2;
            try {
                a2 = PreviewImagesActivity.this.a();
            } catch (IOException e) {
                PreviewImagesActivity.this.k = "save fail";
                e.printStackTrace();
            }
            if (a2 != null) {
                PreviewImagesActivity.this.a(a2, System.currentTimeMillis() + ".jpg");
                PreviewImagesActivity.this.k = PreviewImagesActivity.this.getResources().getString(R.string.text_save_success);
                PreviewImagesActivity.this.n.sendMessage(PreviewImagesActivity.this.n.obtainMessage());
            }
        }
    };
    private Handler n = new Handler() { // from class: com.mbv.a.wp.PreviewImagesActivity.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Toast.makeText(PreviewImagesActivity.this, PreviewImagesActivity.this.k, 0).show();
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbv.a.wp.base.activity.BaseFragmentActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_images);
        b();
        this.f709a = (ViewPager) findViewById(R.id.pager);
        this.b = (UnderlinePageIndicator) findViewById(R.id.indicator);
        Intent intent = getIntent();
        this.i = b.a().b();
        int intExtra = intent.getIntExtra("param_current_position", 0);
        if (this.i == null || this.i.size() == 0) {
            startActivity(new Intent(this, TabWallPaperListActivity.class));
        }
        this.f = this.i.get(intExtra);
        PreviewImagesAdapter previewImagesAdapter = new PreviewImagesAdapter(getSupportFragmentManager());
        previewImagesAdapter.a(this.i);
        this.f709a.setAdapter(previewImagesAdapter);
        this.b.setViewPager(this.f709a);
        this.b.setOnPageChangeListener(this);
        this.b.setCurrentItem(intExtra);
        this.j = (ProgressBar) findViewById(R.id.progress_bar);
    }

    private void b() {
        this.h = (ImageView) findViewById(R.id.img_back);
        this.c = (ImageView) findViewById(R.id.img_bigPic);
        this.d = (TextView) findViewById(R.id.text_save);
        this.e = (TextView) findViewById(R.id.text_set);
        this.d.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.h.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.c) {
            finish();
        }
        if (view == this.h) {
            finish();
        }
        if (view == this.d && !TextUtils.isEmpty(this.f)) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 10000);
        }
        if (view == this.e) {
            WallpaperManager wallpaperManager = WallpaperManager.getInstance(this);
            try {
                Bitmap a2 = a();
                if (a2 != null) {
                    wallpaperManager.setBitmap(a2);
                    Thread.sleep(1000L);
                    Toast.makeText(this, getResources().getString(R.string.text_set_success), 0).show();
                }
            } catch (IOException e) {
                e.printStackTrace();
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
    }

    public Bitmap a() {
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.f == null || TextUtils.isEmpty(this.f)) {
            return null;
        }
        this.g = BitmapFactory.decodeStream(a(this.f));
        return this.g;
    }

    public InputStream a(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setConnectTimeout(5000);
        httpURLConnection.setRequestMethod("GET");
        if (httpURLConnection.getResponseCode() == 200) {
            return httpURLConnection.getInputStream();
        }
        return null;
    }

    public void a(Bitmap bitmap, String str) {
        File file = new File(l);
        if (!file.exists()) {
            file.mkdir();
        }
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(new File(l + str)));
        bitmap.compress(Bitmap.CompressFormat.JPEG, 80, bufferedOutputStream);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 10000) {
            if (iArr.length > 0 && iArr[0] == 0) {
                new Thread(this.m).start();
            } else {
                Toast.makeText(this, getResources().getString(R.string.text_save_success), 0).show();
            }
        }
    }

    @Override // android.app.Activity
    public void finish() {
        if (this.g != null) {
            this.g.recycle();
        }
        super.finish();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
        super.onBackPressed();
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        this.f = this.i.get(i);
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
    }
}