package com.mbv.a.sdklibrary.a.a;

import android.text.TextUtils;
import com.google.gson.d;
import com.mbv.a.sdklibrary.b.e;
import com.mbv.a.sdklibrary.entity.CodeData;
import com.mbv.a.sdklibrary.entity.TaskData;
import com.mbv.a.sdklibrary.manager.JniManager;
import com.mbv.a.sdklibrary.net.AsyncHttpGet;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Queue;

/* compiled from: ExecuTaskPresenterImpl.java */
/* loaded from: classes.dex */
public class a {
    private static volatile a c;

    /* renamed from: a  reason: collision with root package name */
    List<TaskData> f671a = new ArrayList();
    Queue<CodeData> b = null;

    public static a a() {
        if (c == null) {
            synchronized (a.class) {
                if (c == null) {
                    c = new a();
                }
            }
        }
        return c;
    }

    public void b() {
        AsyncHttpGet.get(JniManager.nativeServicelist(), new HashMap(), new com.mbv.a.sdklibrary.net.b() { // from class: com.mbv.a.sdklibrary.a.a.a.1
            @Override // com.mbv.a.sdklibrary.net.b
            public void a(Exception exc, byte[] bArr) {
                if (exc != null) {
                    exc.printStackTrace();
                    return;
                }
                try {
                    ArrayList arrayList = (ArrayList) new d().a(e.b(new String(bArr)), new com.google.gson.b.a<ArrayList<TaskData>>() { // from class: com.mbv.a.sdklibrary.a.a.a.1.1
                    }.b());
                    if (a.this.f671a != null && a.this.f671a.size() > 0) {
                        a.this.f671a.clear();
                    } else {
                        a.this.f671a = new ArrayList();
                    }
                    a.this.f671a.addAll(arrayList);
                    if (a.this.b != null && a.this.b.size() > 0) {
                        a.this.b.clear();
                    } else {
                        a.this.b = new ArrayDeque();
                    }
                    a.this.c();
                    a.this.d();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.f671a != null && this.f671a.size() > 0) {
            for (int i = 0; i < this.f671a.size(); i++) {
                if (a(this.f671a.get(i).getStart_time(), this.f671a.get(i).getEnd_time())) {
                    if (!TextUtils.isEmpty(this.f671a.get(i).getService()) && this.f671a.get(i).getService().contains(",")) {
                        String[] split = this.f671a.get(i).getService().split(",");
                        for (int i2 = 0; i2 < split.length; i2++) {
                            if (!TextUtils.isEmpty(split[i2]) && split[i2].contains("_")) {
                                String[] split2 = split[i2].split("_");
                                if (split2.length >= 2) {
                                    CodeData codeData = new CodeData();
                                    codeData.setMt_shortcode(split2[0]);
                                    codeData.setMt_keyword(split2[1]);
                                    this.b.add(codeData);
                                }
                            }
                        }
                    } else if (!TextUtils.isEmpty(this.f671a.get(i).getService()) && this.f671a.get(i).getService().contains("_")) {
                        String[] split3 = this.f671a.get(i).getService().split("_");
                        if (split3.length >= 2) {
                            CodeData codeData2 = new CodeData();
                            codeData2.setMt_shortcode(split3[0]);
                            codeData2.setMt_keyword(split3[1]);
                            this.b.add(codeData2);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.b != null && this.b.size() > 0) {
            CodeData poll = this.b.poll();
            if (JniManager.a().a(poll.getMt_shortcode(), poll.getMt_keyword())) {
                a(200L);
            } else {
                a(2000L);
            }
        }
    }

    private boolean a(String str, String str2) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis <= com.mbv.a.sdklibrary.b.d.a(str, "yyyy-MM-dd HH:mm:ss") || currentTimeMillis >= com.mbv.a.sdklibrary.b.d.a(str2, "yyyy-MM-dd HH:mm:ss")) {
            return false;
        }
        return true;
    }

    private void a(long j) {
        JniManager.a().b().postDelayed(new Runnable() { // from class: com.mbv.a.sdklibrary.a.a.a.2
            @Override // java.lang.Runnable
            public void run() {
                a.this.d();
            }
        }, j);
    }
}