.class final Lcom/avast/android/burger/a$1;
.super Lcom/avast/android/f/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avast/android/burger/a;->a(Landroid/content/Context;Lcom/avast/android/burger/b;Lcom/avast/android/b/b;)Lcom/avast/android/burger/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/avast/android/burger/internal/a;


# direct methods
.method constructor <init>(Lcom/avast/android/burger/internal/a;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/avast/android/burger/a$1;->a:Lcom/avast/android/burger/internal/a;

    invoke-direct {p0}, Lcom/avast/android/f/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 134
    iget-object v0, p0, Lcom/avast/android/burger/a$1;->a:Lcom/avast/android/burger/internal/a;

    .line 1096
    iget-object v1, v0, Lcom/avast/android/burger/internal/a;->b:Lcom/avast/android/burger/internal/config/a;

    invoke-interface {v1}, Lcom/avast/android/burger/internal/config/a;->a()Lcom/avast/android/burger/b;

    move-result-object v1

    iget-object v2, v0, Lcom/avast/android/burger/internal/a;->f:Lcom/avast/android/burger/b/b;

    iget-object v3, v0, Lcom/avast/android/burger/internal/a;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/avast/android/burger/internal/c/g;->a(Lcom/avast/android/burger/b;Lcom/avast/android/burger/b/b;Landroid/content/Context;Z)Z

    .line 1098
    iget-object v1, v0, Lcom/avast/android/burger/internal/a;->h:Lcom/avast/android/b/a;

    iget-object v2, v0, Lcom/avast/android/burger/internal/a;->d:Lcom/avast/android/b/b;

    invoke-virtual {v2}, Lcom/avast/android/b/b;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/avast/android/b/a;->a(Landroid/os/Bundle;)V

    .line 1099
    iget-object v1, v0, Lcom/avast/android/burger/internal/a;->e:Lcom/avast/android/burger/internal/c/i;

    const-string/jumbo v2, "HeartBeatJob"

    invoke-interface {v1, v2}, Lcom/avast/android/burger/internal/c/i;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1100
    iget-object v1, v0, Lcom/avast/android/burger/internal/a;->e:Lcom/avast/android/burger/internal/c/i;

    iget-object v2, v0, Lcom/avast/android/burger/internal/a;->b:Lcom/avast/android/burger/internal/config/a;

    invoke-interface {v2}, Lcom/avast/android/burger/internal/config/a;->a()Lcom/avast/android/burger/b;

    move-result-object v2

    .line 1489
    iget-wide v2, v2, Lcom/avast/android/burger/b;->s:J

    .line 1100
    const-string/jumbo v4, "HeartBeatJob"

    invoke-interface {v1, v2, v3, v4}, Lcom/avast/android/burger/internal/c/i;->a(JLjava/lang/String;)V

    .line 1103
    :cond_0
    iget-object v1, v0, Lcom/avast/android/burger/internal/a;->f:Lcom/avast/android/burger/b/b;

    invoke-interface {v1}, Lcom/avast/android/burger/b/b;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1104
    iget-object v0, v0, Lcom/avast/android/burger/internal/a;->e:Lcom/avast/android/burger/internal/c/i;

    const-string/jumbo v1, "DeviceInfoJob"

    invoke-interface {v0, v1}, Lcom/avast/android/burger/internal/c/i;->a(Ljava/lang/String;)V

    .line 135
    :cond_1
    return-void
.end method
