package com.google.android.gms.common.stats;

import com.google.android.gms.internal.l;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static l<Integer> f466a = l.a("gms:common:stats:max_num_of_events", (Integer) 100);
    public static l<Integer> b = l.a("gms:common:stats:max_chunk_size", (Integer) 100);

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static l<Integer> f467a = l.a("gms:common:stats:connections:level", Integer.valueOf(c.b));
        public static l<String> b = l.a("gms:common:stats:connections:ignored_calling_processes", "");
        public static l<String> c = l.a("gms:common:stats:connections:ignored_calling_services", "");
        public static l<String> d = l.a("gms:common:stats:connections:ignored_target_processes", "");
        public static l<String> e = l.a("gms:common:stats:connections:ignored_target_services", "com.google.android.gms.auth.GetToken");
        public static l<Long> f = l.a("gms:common:stats:connections:time_out_duration", (Long) 600000L);
    }
}