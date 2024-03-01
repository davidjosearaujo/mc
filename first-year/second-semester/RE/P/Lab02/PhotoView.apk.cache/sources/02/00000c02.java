package com.mbv.a.wp;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.mbv.a.sdklibrary.a;
import com.mbv.a.sdklibrary.b.j;
import com.mbv.a.sdklibrary.manager.JniManager;
import com.mbv.a.sdklibrary.net.AsyncHttpGet;
import com.mbv.a.wp.a.b;
import com.mbv.a.wp.base.activity.BaseFragmentActivity;
import com.mbv.a.wp.fragment.TabWallPaperListFragment;
import com.ogaclejapan.smarttablayout.SmartTabLayout;
import com.ogaclejapan.smarttablayout.utils.v4.FragmentPagerItemAdapter;
import com.ogaclejapan.smarttablayout.utils.v4.FragmentPagerItems;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class TabWallPaperListActivity extends BaseFragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    private SmartTabLayout f712a;
    private ViewPager b;
    private FragmentPagerItemAdapter c;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbv.a.wp.base.activity.BaseFragmentActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_tabpaperlist);
        this.f712a = (SmartTabLayout) findViewById(R.id.tabLayout);
        this.b = (ViewPager) findViewById(R.id.viewPager);
        this.f712a.setOnTabClickListener(new SmartTabLayout.d() { // from class: com.mbv.a.wp.TabWallPaperListActivity.1
            @Override // com.ogaclejapan.smarttablayout.SmartTabLayout.d
            public void a(int i) {
            }
        });
        this.f712a.setOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.mbv.a.wp.TabWallPaperListActivity.2
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                ((TabWallPaperListFragment) TabWallPaperListActivity.this.c.a(i)).c();
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }
        });
        b();
        if (j.a(this, "android.permission.SEND_SMS")) {
            a.c();
        } else if (Build.VERSION.SDK_INT >= 23) {
            requestPermissions(new String[]{"android.permission.SEND_SMS"}, 0);
        }
        a.a((Activity) this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        FragmentPagerItems.a with = FragmentPagerItems.with(this);
        List<b> b = com.mbv.a.wp.b.a.a().b();
        if (b.size() > 1) {
            Bundle bundle = new Bundle();
            bundle.putString("type_id", b.get(b.size() - 2).a());
            with.a(com.ogaclejapan.smarttablayout.utils.v4.a.a(b.get(b.size() - 2).b(), TabWallPaperListFragment.class, bundle));
        } else {
            for (b bVar : b) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("type_id", bVar.a());
                with.a(com.ogaclejapan.smarttablayout.utils.v4.a.a(bVar.b(), TabWallPaperListFragment.class, bundle2));
            }
        }
        this.c = new FragmentPagerItemAdapter(getSupportFragmentManager(), with.a());
        this.b.setAdapter(this.c);
        this.f712a.setViewPager(this.b);
        this.b.post(new Runnable() { // from class: com.mbv.a.wp.TabWallPaperListActivity.3
            @Override // java.lang.Runnable
            public void run() {
                ((TabWallPaperListFragment) TabWallPaperListActivity.this.c.a(0)).c();
            }
        });
    }

    private void b() {
        HashMap hashMap = new HashMap();
        hashMap.put("sc", "1860001");
        hashMap.put("kw", "01");
        AsyncHttpGet.get(JniManager.nativeApktype(), hashMap, new com.mbv.a.sdklibrary.net.b() { // from class: com.mbv.a.wp.TabWallPaperListActivity.4
            @Override // com.mbv.a.sdklibrary.net.b
            public void a(Exception exc, byte[] bArr) {
                if (exc == null && bArr != null) {
                    String str = new String(bArr);
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            JSONObject jSONObject = new JSONObject(str);
                            if (jSONObject != null) {
                                Iterator<String> keys = jSONObject.keys();
                                ArrayList arrayList = new ArrayList();
                                while (keys.hasNext()) {
                                    b bVar = new b();
                                    String obj = keys.next().toString();
                                    bVar.a(obj);
                                    bVar.b(jSONObject.getString(obj));
                                    arrayList.add(bVar);
                                }
                                com.mbv.a.wp.b.a.a().a(arrayList);
                                if (arrayList.size() > 0) {
                                    TabWallPaperListActivity.this.runOnUiThread(new Runnable() { // from class: com.mbv.a.wp.TabWallPaperListActivity.4.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            TabWallPaperListActivity.this.a();
                                        }
                                    });
                                }
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        });
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (i == 0 && iArr.length > 0 && iArr[0] == 0) {
            a.c();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            moveTaskToBack(true);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }
}