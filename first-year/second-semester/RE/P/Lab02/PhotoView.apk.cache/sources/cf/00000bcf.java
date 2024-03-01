package com.mbv.a.sdklibrary.entity;

import com.google.gson.d;

/* loaded from: classes.dex */
public class HtmData {
    private String html;
    private String url;

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getHtml() {
        return this.html;
    }

    public void setHtml(String str) {
        this.html = str;
    }

    public String toString() {
        return new d().a(this);
    }
}