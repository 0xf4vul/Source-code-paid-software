.class public final Lcom/avast/android/burger/internal/ReferralReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field a:Lcom/avast/android/burger/b;

.field b:Lcom/avast/android/burger/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 37
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v2, "RR.onReceive"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    if-eqz p2, :cond_0

    const-string/jumbo v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-static {}, Lcom/avast/android/burger/internal/a/p;->a()Lcom/avast/android/burger/internal/a/k;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    invoke-interface {v1, p0}, Lcom/avast/android/burger/internal/a/k;->a(Lcom/avast/android/burger/internal/ReferralReceiver;)V

    .line 51
    :goto_1
    iget-object v1, p0, Lcom/avast/android/burger/internal/ReferralReceiver;->b:Lcom/avast/android/burger/b/b;

    invoke-interface {v1}, Lcom/avast/android/burger/b/b;->l()Z

    move-result v1

    if-nez v1, :cond_3

    .line 52
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v2, "RR.end"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_2
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v2, "Using default"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/burger/c/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    new-instance v1, Lcom/avast/android/burger/b/a;

    invoke-direct {v1, p1}, Lcom/avast/android/burger/b/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/avast/android/burger/internal/ReferralReceiver;->b:Lcom/avast/android/burger/b/b;

    goto :goto_1

    .line 58
    :cond_3
    const-string/jumbo v1, "referrer"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    sget-object v2, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "com.android.vending.INSTALL_REFERRER:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    iget-object v2, p0, Lcom/avast/android/burger/internal/ReferralReceiver;->a:Lcom/avast/android/burger/b;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/avast/android/burger/internal/ReferralReceiver;->a:Lcom/avast/android/burger/b;

    .line 1417
    iget v0, v0, Lcom/avast/android/burger/b;->h:I

    .line 69
    :cond_4
    new-instance v2, Lcom/avast/android/burger/a/f;

    invoke-direct {v2, v0, v1}, Lcom/avast/android/burger/a/f;-><init>(ILjava/lang/String;)V

    .line 70
    invoke-static {p1, v2}, Lcom/avast/android/burger/internal/BurgerMessageService;->a(Landroid/content/Context;Lcom/avast/android/burger/a/i;)V

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/avast/android/burger/internal/ReferralReceiver;->b:Lcom/avast/android/burger/b/b;

    invoke-interface {v0}, Lcom/avast/android/burger/b/b;->m()V

    goto :goto_0
.end method
