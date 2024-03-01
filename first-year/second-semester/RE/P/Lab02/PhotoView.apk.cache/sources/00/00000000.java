package a;

import android.content.Intent;
import android.os.Bundle;

/* compiled from: AppLinks.java */
/* loaded from: classes.dex */
public final class a {
    public static Bundle a(Intent intent) {
        return intent.getBundleExtra("al_applink_data");
    }
}