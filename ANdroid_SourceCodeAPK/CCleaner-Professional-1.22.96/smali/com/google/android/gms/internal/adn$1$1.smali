.class final Lcom/google/android/gms/internal/adn$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/adn$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/adn$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/adn$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/adn$1$1;->a:Lcom/google/android/gms/internal/adn$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v0, p0, Lcom/google/android/gms/internal/adn$1$1;->a:Lcom/google/android/gms/internal/adn$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/adn$1;->a:Landroid/content/Context;

    const-string/jumbo v1, "https://support.google.com/dfp_premium/answer/7160685#push"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
