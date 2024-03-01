package com.facebook;

import android.os.Handler;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: GraphRequestBatch.java */
/* loaded from: classes.dex */
public class f extends AbstractList<GraphRequest> {

    /* renamed from: a  reason: collision with root package name */
    private static AtomicInteger f143a = new AtomicInteger();
    private Handler b;
    private List<GraphRequest> c;
    private int d = 0;
    private final String e = Integer.valueOf(f143a.incrementAndGet()).toString();
    private List<a> f = new ArrayList();
    private String g;

    /* compiled from: GraphRequestBatch.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(f fVar);
    }

    /* compiled from: GraphRequestBatch.java */
    /* loaded from: classes.dex */
    public interface b extends a {
        void a(f fVar, long j, long j2);
    }

    public f() {
        this.c = new ArrayList();
        this.c = new ArrayList();
    }

    public f(Collection<GraphRequest> collection) {
        this.c = new ArrayList();
        this.c = new ArrayList(collection);
    }

    public f(GraphRequest... graphRequestArr) {
        this.c = new ArrayList();
        this.c = Arrays.asList(graphRequestArr);
    }

    public int a() {
        return this.d;
    }

    public void a(a aVar) {
        if (!this.f.contains(aVar)) {
            this.f.add(aVar);
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: a */
    public final boolean add(GraphRequest graphRequest) {
        return this.c.add(graphRequest);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: a */
    public final void add(int i, GraphRequest graphRequest) {
        this.c.add(i, graphRequest);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.c.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: a */
    public final GraphRequest get(int i) {
        return this.c.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: b */
    public final GraphRequest remove(int i) {
        return this.c.remove(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: b */
    public final GraphRequest set(int i, GraphRequest graphRequest) {
        return this.c.set(i, graphRequest);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.c.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String b() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Handler c() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Handler handler) {
        this.b = handler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<GraphRequest> d() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<a> e() {
        return this.f;
    }

    public final String f() {
        return this.g;
    }

    public final List<g> g() {
        return i();
    }

    public final e h() {
        return j();
    }

    List<g> i() {
        return GraphRequest.b(this);
    }

    e j() {
        return GraphRequest.c(this);
    }
}