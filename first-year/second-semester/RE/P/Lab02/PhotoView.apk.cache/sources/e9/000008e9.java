package com.facebook.share.internal;

import android.net.Uri;
import android.os.Bundle;
import com.facebook.internal.ab;
import com.facebook.share.model.ShareMessengerActionButton;
import com.facebook.share.model.ShareMessengerGenericTemplateContent;
import com.facebook.share.model.ShareMessengerGenericTemplateElement;
import com.facebook.share.model.ShareMessengerMediaTemplateContent;
import com.facebook.share.model.ShareMessengerOpenGraphMusicTemplateContent;
import com.facebook.share.model.ShareMessengerURLActionButton;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: MessengerShareContentUtility.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f315a = Pattern.compile("^(.+)\\.(facebook\\.com)$");

    public static void a(Bundle bundle, ShareMessengerGenericTemplateContent shareMessengerGenericTemplateContent) {
        a(bundle, shareMessengerGenericTemplateContent.c());
        ab.a(bundle, "MESSENGER_PLATFORM_CONTENT", a(shareMessengerGenericTemplateContent));
    }

    public static void a(Bundle bundle, ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent) {
        b(bundle, shareMessengerOpenGraphMusicTemplateContent);
        ab.a(bundle, "MESSENGER_PLATFORM_CONTENT", a(shareMessengerOpenGraphMusicTemplateContent));
    }

    public static void a(Bundle bundle, ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) {
        b(bundle, shareMessengerMediaTemplateContent);
        ab.a(bundle, "MESSENGER_PLATFORM_CONTENT", a(shareMessengerMediaTemplateContent));
    }

    private static void a(Bundle bundle, ShareMessengerGenericTemplateElement shareMessengerGenericTemplateElement) {
        if (shareMessengerGenericTemplateElement.e() != null) {
            a(bundle, shareMessengerGenericTemplateElement.e(), false);
        } else if (shareMessengerGenericTemplateElement.d() != null) {
            a(bundle, shareMessengerGenericTemplateElement.d(), true);
        }
        ab.a(bundle, "IMAGE", shareMessengerGenericTemplateElement.c());
        ab.a(bundle, "PREVIEW_TYPE", "DEFAULT");
        ab.a(bundle, "TITLE", shareMessengerGenericTemplateElement.a());
        ab.a(bundle, "SUBTITLE", shareMessengerGenericTemplateElement.b());
    }

    private static void b(Bundle bundle, ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent) {
        a(bundle, shareMessengerOpenGraphMusicTemplateContent.b(), false);
        ab.a(bundle, "PREVIEW_TYPE", "OPEN_GRAPH");
        ab.a(bundle, "OPEN_GRAPH_URL", shareMessengerOpenGraphMusicTemplateContent.a());
    }

    private static void b(Bundle bundle, ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) {
        a(bundle, shareMessengerMediaTemplateContent.d(), false);
        ab.a(bundle, "PREVIEW_TYPE", "DEFAULT");
        ab.a(bundle, "ATTACHMENT_ID", shareMessengerMediaTemplateContent.b());
        if (shareMessengerMediaTemplateContent.c() != null) {
            ab.a(bundle, a(shareMessengerMediaTemplateContent.c()), shareMessengerMediaTemplateContent.c());
        }
        ab.a(bundle, "type", a(shareMessengerMediaTemplateContent.a()));
    }

    private static void a(Bundle bundle, ShareMessengerActionButton shareMessengerActionButton, boolean z) {
        if (shareMessengerActionButton != null && (shareMessengerActionButton instanceof ShareMessengerURLActionButton)) {
            a(bundle, (ShareMessengerURLActionButton) shareMessengerActionButton, z);
        }
    }

    private static void a(Bundle bundle, ShareMessengerURLActionButton shareMessengerURLActionButton, boolean z) {
        String str;
        if (z) {
            str = ab.a(shareMessengerURLActionButton.b());
        } else {
            str = shareMessengerURLActionButton.a() + " - " + ab.a(shareMessengerURLActionButton.b());
        }
        ab.a(bundle, "TARGET_DISPLAY", str);
        ab.a(bundle, "ITEM_URL", shareMessengerURLActionButton.b());
    }

    private static JSONObject a(ShareMessengerGenericTemplateContent shareMessengerGenericTemplateContent) {
        return new JSONObject().put("attachment", new JSONObject().put("type", "template").put("payload", new JSONObject().put("template_type", "generic").put("sharable", shareMessengerGenericTemplateContent.a()).put("image_aspect_ratio", a(shareMessengerGenericTemplateContent.b())).put("elements", new JSONArray().put(a(shareMessengerGenericTemplateContent.c())))));
    }

    private static JSONObject a(ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent) {
        return new JSONObject().put("attachment", new JSONObject().put("type", "template").put("payload", new JSONObject().put("template_type", "open_graph").put("elements", new JSONArray().put(b(shareMessengerOpenGraphMusicTemplateContent)))));
    }

    private static JSONObject a(ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) {
        return new JSONObject().put("attachment", new JSONObject().put("type", "template").put("payload", new JSONObject().put("template_type", "media").put("elements", new JSONArray().put(b(shareMessengerMediaTemplateContent)))));
    }

    private static JSONObject a(ShareMessengerGenericTemplateElement shareMessengerGenericTemplateElement) {
        JSONObject put = new JSONObject().put("title", shareMessengerGenericTemplateElement.a()).put("subtitle", shareMessengerGenericTemplateElement.b()).put("image_url", ab.a(shareMessengerGenericTemplateElement.c()));
        if (shareMessengerGenericTemplateElement.e() != null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(a(shareMessengerGenericTemplateElement.e()));
            put.put("buttons", jSONArray);
        }
        if (shareMessengerGenericTemplateElement.d() != null) {
            put.put("default_action", a(shareMessengerGenericTemplateElement.d(), true));
        }
        return put;
    }

    private static JSONObject b(ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent) {
        JSONObject put = new JSONObject().put("url", ab.a(shareMessengerOpenGraphMusicTemplateContent.a()));
        if (shareMessengerOpenGraphMusicTemplateContent.b() != null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(a(shareMessengerOpenGraphMusicTemplateContent.b()));
            put.put("buttons", jSONArray);
        }
        return put;
    }

    private static JSONObject b(ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) {
        JSONObject put = new JSONObject().put("attachment_id", shareMessengerMediaTemplateContent.b()).put("url", ab.a(shareMessengerMediaTemplateContent.c())).put("media_type", a(shareMessengerMediaTemplateContent.a()));
        if (shareMessengerMediaTemplateContent.d() != null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(a(shareMessengerMediaTemplateContent.d()));
            put.put("buttons", jSONArray);
        }
        return put;
    }

    private static JSONObject a(ShareMessengerActionButton shareMessengerActionButton) {
        return a(shareMessengerActionButton, false);
    }

    private static JSONObject a(ShareMessengerActionButton shareMessengerActionButton, boolean z) {
        if (shareMessengerActionButton instanceof ShareMessengerURLActionButton) {
            return a((ShareMessengerURLActionButton) shareMessengerActionButton, z);
        }
        return null;
    }

    private static JSONObject a(ShareMessengerURLActionButton shareMessengerURLActionButton, boolean z) {
        return new JSONObject().put("type", "web_url").put("title", z ? null : shareMessengerURLActionButton.a()).put("url", ab.a(shareMessengerURLActionButton.b())).put("webview_height_ratio", a(shareMessengerURLActionButton.e())).put("messenger_extensions", shareMessengerURLActionButton.c()).put("fallback_url", ab.a(shareMessengerURLActionButton.d())).put("webview_share_button", a(shareMessengerURLActionButton));
    }

    private static String a(Uri uri) {
        String host = uri.getHost();
        return (ab.a(host) || !f315a.matcher(host).matches()) ? "IMAGE" : "uri";
    }

    private static String a(ShareMessengerURLActionButton.WebviewHeightRatio webviewHeightRatio) {
        if (webviewHeightRatio == null) {
            return "full";
        }
        switch (webviewHeightRatio) {
            case WebviewHeightRatioCompact:
                return "compact";
            case WebviewHeightRatioTall:
                return "tall";
            default:
                return "full";
        }
    }

    private static String a(ShareMessengerGenericTemplateContent.ImageAspectRatio imageAspectRatio) {
        if (imageAspectRatio == null) {
            return "horizontal";
        }
        switch (imageAspectRatio) {
            case SQUARE:
                return "square";
            default:
                return "horizontal";
        }
    }

    private static String a(ShareMessengerMediaTemplateContent.MediaType mediaType) {
        if (mediaType == null) {
            return "image";
        }
        switch (mediaType) {
            case VIDEO:
                return "video";
            default:
                return "image";
        }
    }

    private static String a(ShareMessengerURLActionButton shareMessengerURLActionButton) {
        if (shareMessengerURLActionButton.f()) {
            return "hide";
        }
        return null;
    }
}