.class final Lcom/avast/android/burger/internal/c/a$1;
.super Lcom/avast/android/f/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avast/android/burger/internal/c/a;-><init>(Landroid/content/Context;Lcom/avast/android/burger/internal/config/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/avast/android/burger/internal/c/a;


# direct methods
.method constructor <init>(Lcom/avast/android/burger/internal/c/a;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/avast/android/burger/internal/c/a$1;->a:Lcom/avast/android/burger/internal/c/a;

    invoke-direct {p0}, Lcom/avast/android/f/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/avast/android/f/c/a;->a()Landroid/support/v4/h/a;

    move-result-object v0

    const-string/jumbo v1, "log.avast.delay.deviceinfo"

    .line 81
    invoke-virtual {v0, v1}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/avast/android/burger/internal/c/a$1;->a:Lcom/avast/android/burger/internal/c/a;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avast/android/burger/internal/c/a;->a(Lcom/avast/android/burger/internal/c/a;Ljava/lang/Long;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/avast/android/burger/internal/c/a$1;->a:Lcom/avast/android/burger/internal/c/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/burger/internal/c/a;->a(Lcom/avast/android/burger/internal/c/a;Ljava/lang/Long;)Ljava/lang/Long;

    goto :goto_0
.end method
