.class final Lcom/facebook/ads/internal/view/m$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/m;->a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/m;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/m;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/m$6;->a:Lcom/facebook/ads/internal/view/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/m$6;->a:Lcom/facebook/ads/internal/view/m;

    .line 1000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/c$a;

    .line 0
    const-string/jumbo v1, "performCtaClick"

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/c$a;->a(Ljava/lang/String;)V

    return-void
.end method
