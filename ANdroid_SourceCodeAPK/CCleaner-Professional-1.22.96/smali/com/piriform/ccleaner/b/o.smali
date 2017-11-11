.class public final Lcom/piriform/ccleaner/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/b/l;


# instance fields
.field private final a:Lcom/piriform/ccleaner/s/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/s/j;)V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/piriform/ccleaner/b/o;->a:Lcom/piriform/ccleaner/s/j;

    .line 31
    const v0, 0x7f080217

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string/jumbo v1, "v1.22.96_release"

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->setVersionName(Ljava/lang/String;)V

    .line 33
    invoke-static {p1, v0}, Lcom/flurry/android/FlurryAgent;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/piriform/ccleaner/b/o;->a:Lcom/piriform/ccleaner/s/j;

    invoke-interface {v0}, Lcom/piriform/ccleaner/s/j;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/piriform/ccleaner/b/r;->a:Lcom/piriform/ccleaner/b/r;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/b/r;->name()Ljava/lang/String;

    move-result-object v0

    .line 1039
    :goto_0
    sget-object v1, Lcom/piriform/ccleaner/b/m;->a:Lcom/piriform/ccleaner/b/m;

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/piriform/ccleaner/b/o;->a(Lcom/piriform/ccleaner/b/m;Ljava/lang/String;J)V

    .line 35
    return-void

    .line 1038
    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/b/r;->b:Lcom/piriform/ccleaner/b/r;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/b/r;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/piriform/ccleaner/b/m;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2

    .prologue
    .line 68
    invoke-static {p0}, Lcom/piriform/ccleaner/b/o;->b(Lcom/piriform/ccleaner/b/m;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/piriform/ccleaner/b/m;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1119
    iget-object v1, p0, Lcom/piriform/ccleaner/b/m;->aG:Lcom/piriform/ccleaner/b/n;

    .line 2036
    iget-object v1, v1, Lcom/piriform/ccleaner/b/n;->y:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2115
    iget-object v1, p0, Lcom/piriform/ccleaner/b/m;->aF:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/b/m;)V
    .locals 1

    .prologue
    .line 54
    invoke-static {p1}, Lcom/piriform/ccleaner/b/o;->b(Lcom/piriform/ccleaner/b/m;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;

    .line 55
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/b/m;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 63
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {p1, p2, v0}, Lcom/piriform/ccleaner/b/o;->a(Lcom/piriform/ccleaner/b/m;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;

    .line 65
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/b/m;Ljava/lang/String;JLjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/b/m;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    const-string/jumbo v1, "value"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    if-eqz p5, :cond_0

    .line 76
    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 78
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2119
    iget-object v2, p1, Lcom/piriform/ccleaner/b/m;->aG:Lcom/piriform/ccleaner/b/n;

    .line 3036
    iget-object v2, v2, Lcom/piriform/ccleaner/b/n;->y:Ljava/lang/String;

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3115
    iget-object v3, p1, Lcom/piriform/ccleaner/b/m;->aF:Ljava/lang/String;

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    .line 89
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/b/m;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 93
    const-string/jumbo v0, "error_cause"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/piriform/ccleaner/b/o;->a(Lcom/piriform/ccleaner/b/m;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;

    .line 94
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 50
    return-void
.end method
