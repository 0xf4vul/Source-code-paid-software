.class final Lc/a/a/a/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lc/a/a/a/a/f/c;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/a/a/b/c;->b:Landroid/content/Context;

    .line 37
    new-instance v0, Lc/a/a/a/a/f/d;

    const-string/jumbo v1, "TwitterAdvertisingInfoPreferences"

    invoke-direct {v0, p1, v1}, Lc/a/a/a/a/f/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lc/a/a/a/a/b/c;->a:Lc/a/a/a/a/f/c;

    .line 38
    return-void
.end method

.method static b(Lc/a/a/a/a/b/b;)Z
    .locals 1

    .prologue
    .line 111
    if-eqz p0, :cond_0

    iget-object v0, p0, Lc/a/a/a/a/b/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Lc/a/a/a/a/b/b;
    .locals 4

    .prologue
    .line 117
    .line 1103
    new-instance v0, Lc/a/a/a/a/b/d;

    iget-object v1, p0, Lc/a/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc/a/a/a/a/b/d;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-interface {v0}, Lc/a/a/a/a/b/f;->a()Lc/a/a/a/a/b/b;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lc/a/a/a/a/b/c;->b(Lc/a/a/a/a/b/b;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1107
    new-instance v0, Lc/a/a/a/a/b/e;

    iget-object v1, p0, Lc/a/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc/a/a/a/a/b/e;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-interface {v0}, Lc/a/a/a/a/b/f;->a()Lc/a/a/a/a/b/b;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lc/a/a/a/a/b/c;->b(Lc/a/a/a/a/b/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    const-string/jumbo v3, "AdvertisingInfo not present"

    invoke-interface {v1, v2, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-object v0

    .line 127
    :cond_0
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    const-string/jumbo v3, "Using AdvertisingInfo from Service Provider"

    invoke-interface {v1, v2, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    const-string/jumbo v3, "Using AdvertisingInfo from Reflection Provider"

    invoke-interface {v1, v2, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lc/a/a/a/a/b/b;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Lc/a/a/a/a/b/c;->b(Lc/a/a/a/a/b/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lc/a/a/a/a/b/c;->a:Lc/a/a/a/a/f/c;

    iget-object v1, p0, Lc/a/a/a/a/b/c;->a:Lc/a/a/a/a/f/c;

    invoke-interface {v1}, Lc/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "advertising_id"

    iget-object v3, p1, Lc/a/a/a/a/b/b;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "limit_ad_tracking_enabled"

    iget-boolean v3, p1, Lc/a/a/a/a/b/b;->b:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lc/a/a/a/a/b/c;->a:Lc/a/a/a/a/f/c;

    iget-object v1, p0, Lc/a/a/a/a/b/c;->a:Lc/a/a/a/a/f/c;

    invoke-interface {v1}, Lc/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "advertising_id"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "limit_ad_tracking_enabled"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    goto :goto_0
.end method
