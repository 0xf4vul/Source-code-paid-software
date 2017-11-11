.class final Lcom/facebook/ads/AudienceNetworkActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/m/an$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AudienceNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/AudienceNetworkActivity;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity$7;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$7;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    sget-object v1, Lcom/facebook/ads/internal/m;->i:Lcom/facebook/ads/internal/m;

    .line 4000
    iget-object v1, v1, Lcom/facebook/ads/internal/m;->j:Ljava/lang/String;

    .line 0
    invoke-static {v0, v1}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Lcom/facebook/ads/AudienceNetworkActivity;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/facebook/ads/internal/m/c;)V
    .locals 2

    .prologue
    .line 0
    if-eqz p1, :cond_1

    .line 1000
    iget v0, p1, Lcom/facebook/ads/internal/m/c;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$7;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    sget-object v1, Lcom/facebook/ads/internal/m;->h:Lcom/facebook/ads/internal/m;

    .line 2000
    iget-object v1, v1, Lcom/facebook/ads/internal/m;->j:Ljava/lang/String;

    .line 0
    invoke-static {v0, v1}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Lcom/facebook/ads/AudienceNetworkActivity;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 1000
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$7;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    sget-object v1, Lcom/facebook/ads/internal/m;->i:Lcom/facebook/ads/internal/m;

    .line 3000
    iget-object v1, v1, Lcom/facebook/ads/internal/m;->j:Ljava/lang/String;

    .line 0
    invoke-static {v0, v1}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Lcom/facebook/ads/AudienceNetworkActivity;Ljava/lang/String;)V

    goto :goto_1
.end method
