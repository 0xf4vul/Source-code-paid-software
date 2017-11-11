.class final Lcom/facebook/ads/internal/m/f$6;
.super Lcom/facebook/ads/internal/h/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/m/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/h/s",
        "<",
        "Lcom/facebook/ads/internal/view/d/a/r;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/facebook/ads/internal/m/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/m/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/ads/internal/m/f$6;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/ads/internal/m/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/m/f$6;->b:Lcom/facebook/ads/internal/m/f;

    invoke-direct {p0}, Lcom/facebook/ads/internal/h/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/r;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/d/a/r;

    return-object v0
.end method

.method public final synthetic a(Lcom/facebook/ads/internal/h/q;)V
    .locals 4

    .prologue
    .line 0
    .line 1000
    sget-boolean v0, Lcom/facebook/ads/internal/m/f$6;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/m/f$6;->b:Lcom/facebook/ads/internal/m/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/m/f$6;->b:Lcom/facebook/ads/internal/m/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/m/f$6;->b:Lcom/facebook/ads/internal/m/f;

    .line 2000
    iget-object v1, v0, Lcom/facebook/ads/internal/m/l;->o:Lcom/facebook/ads/internal/h/f;

    iget-object v2, v0, Lcom/facebook/ads/internal/m/l;->m:Ljava/lang/String;

    sget-object v3, Lcom/facebook/ads/internal/m/l$b;->b:Lcom/facebook/ads/internal/m/l$b;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/internal/m/l;->a(Lcom/facebook/ads/internal/m/l$b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/h/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 0
    :cond_1
    return-void
.end method
