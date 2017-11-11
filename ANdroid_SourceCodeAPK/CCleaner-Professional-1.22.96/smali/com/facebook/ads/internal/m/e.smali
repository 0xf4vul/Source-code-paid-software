.class final Lcom/facebook/ads/internal/m/e;
.super Landroid/database/ContentObserver;


# instance fields
.field private final a:Lcom/facebook/ads/internal/m/l;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/internal/m/l;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/m/e;->a:Lcom/facebook/ads/internal/m/l;

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/m/e;->a:Lcom/facebook/ads/internal/m/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/l;->a()V

    return-void
.end method
