.class final Lcom/facebook/ads/internal/j/b/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/j/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/j/b/f;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/j/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/j/b/f$b;->a:Lcom/facebook/ads/internal/j/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/j/b/f;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/j/b/f$b;-><init>(Lcom/facebook/ads/internal/j/b/f;)V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/j/b/f$b;->a:Lcom/facebook/ads/internal/j/b/f;

    .line 2000
    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/b/f;->a()Z

    move-result v0

    .line 1000
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 0
    return-object v0
.end method
