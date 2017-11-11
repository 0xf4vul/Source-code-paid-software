.class public final Lcom/avast/android/burger/internal/c/e;
.super Lcom/evernote/android/job/a;
.source "SourceFile"


# instance fields
.field a:Lcom/avast/android/burger/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/evernote/android/job/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/evernote/android/job/a$a;)Lcom/evernote/android/job/a$b;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    .line 3038
    invoke-static {}, Lcom/avast/android/burger/internal/a/p;->a()Lcom/avast/android/burger/internal/a/k;

    move-result-object v0

    .line 3039
    if-eqz v0, :cond_0

    .line 3040
    invoke-interface {v0, p0}, Lcom/avast/android/burger/internal/a/k;->a(Lcom/avast/android/burger/internal/c/e;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/burger/internal/c/e;->c()Landroid/content/Context;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/avast/android/burger/internal/c/e;->a:Lcom/avast/android/burger/b/b;

    if-nez v1, :cond_1

    .line 51
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v2, "DeviceInfoJob: DI failed for DeviceInfoJob, using default"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    new-instance v1, Lcom/avast/android/burger/b/a;

    invoke-direct {v1, v0}, Lcom/avast/android/burger/b/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/avast/android/burger/internal/c/e;->a:Lcom/avast/android/burger/b/b;

    .line 54
    :cond_1
    invoke-static {v0}, Lcom/avast/android/burger/a/c;->a(Landroid/content/Context;)Lcom/avast/android/burger/a/c;

    move-result-object v1

    .line 3069
    iget-object v2, v1, Lcom/avast/android/burger/a/i;->a:Lcom/avast/a/b/a/a$g;

    .line 3254
    iget-object v2, v2, Lcom/avast/a/b/a/a$g;->f:Lcom/google/a/c;

    .line 56
    if-nez v2, :cond_2

    .line 57
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "DeviceInfoJob: Unable to get device info bytes"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/evernote/android/job/a$b;->c:Lcom/evernote/android/job/a$b;

    .line 71
    :goto_0
    return-object v0

    .line 60
    :cond_2
    invoke-virtual {v2}, Lcom/google/a/c;->c()[B

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/f/b/a;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "DeviceInfoJob: Unable to prepare fingerprint"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/evernote/android/job/a$b;->b:Lcom/evernote/android/job/a$b;

    goto :goto_0

    .line 66
    :cond_3
    iget-object v3, p0, Lcom/avast/android/burger/internal/c/e;->a:Lcom/avast/android/burger/b/b;

    invoke-interface {v3}, Lcom/avast/android/burger/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 67
    invoke-static {v0, v1}, Lcom/avast/android/burger/internal/BurgerMessageService;->a(Landroid/content/Context;Lcom/avast/android/burger/a/i;)V

    .line 68
    iget-object v0, p0, Lcom/avast/android/burger/internal/c/e;->a:Lcom/avast/android/burger/b/b;

    invoke-interface {v0, v2}, Lcom/avast/android/burger/b/b;->b(Ljava/lang/String;)V

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/avast/android/burger/internal/c/e;->a:Lcom/avast/android/burger/b/b;

    invoke-interface {v0}, Lcom/avast/android/burger/b/b;->e()V

    .line 71
    sget-object v0, Lcom/evernote/android/job/a$b;->a:Lcom/evernote/android/job/a$b;

    goto :goto_0
.end method
