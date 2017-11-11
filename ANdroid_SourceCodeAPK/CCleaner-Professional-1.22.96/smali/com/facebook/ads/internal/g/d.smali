.class public final Lcom/facebook/ads/internal/g/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/g/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Lcom/facebook/ads/internal/g/e;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/g/e;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/g/d;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/g/d;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/facebook/ads/internal/g/d;->c:Lcom/facebook/ads/internal/g/e;

    iput-object p2, p0, Lcom/facebook/ads/internal/g/d;->d:Ljava/lang/String;

    return-void
.end method
