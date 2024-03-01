package com.mbv.a.wp.b;

import com.mbv.a.wp.a.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: PaperDataManager.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private List<b> f722a = new ArrayList();
    private Map<String, List<com.mbv.a.wp.a.a>> b = new HashMap();
    private Map<String, ArrayList<String>> c = new HashMap();

    public static a a() {
        return C0041a.f723a;
    }

    /* compiled from: PaperDataManager.java */
    /* renamed from: com.mbv.a.wp.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0041a {

        /* renamed from: a  reason: collision with root package name */
        private static final a f723a = new a();
    }

    public void a(List<b> list) {
        this.f722a.clear();
        this.f722a.addAll(list);
    }

    public List<b> b() {
        return this.f722a;
    }

    public void a(String str, List<com.mbv.a.wp.a.a> list) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        this.b.put(str, arrayList);
        ArrayList<String> arrayList2 = new ArrayList<>();
        for (com.mbv.a.wp.a.a aVar : list) {
            arrayList2.add(aVar.b());
        }
        this.c.put(str, arrayList2);
    }

    public void b(String str, List<com.mbv.a.wp.a.a> list) {
        if (!this.b.containsKey(str)) {
            this.b.put(str, new ArrayList());
            this.c.put(str, new ArrayList<>());
        }
        this.b.get(str).addAll(list);
        for (com.mbv.a.wp.a.a aVar : list) {
            this.c.get(str).add(aVar.b());
        }
    }

    public List<com.mbv.a.wp.a.a> a(String str) {
        return this.b.containsKey(str) ? this.b.get(str) : new ArrayList();
    }

    public ArrayList<String> b(String str) {
        return this.c.containsKey(str) ? this.c.get(str) : new ArrayList<>();
    }
}