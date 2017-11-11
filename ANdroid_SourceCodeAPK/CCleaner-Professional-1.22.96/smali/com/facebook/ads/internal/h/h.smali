.class public final enum Lcom/facebook/ads/internal/h/h;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/h/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/h/h;

.field public static final enum b:Lcom/facebook/ads/internal/h/h;

.field private static final synthetic d:[Lcom/facebook/ads/internal/h/h;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/h/h;

    const-string/jumbo v1, "IMMEDIATE"

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/ads/internal/h/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/h/h;->a:Lcom/facebook/ads/internal/h/h;

    new-instance v0, Lcom/facebook/ads/internal/h/h;

    const-string/jumbo v1, "DEFERRED"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/ads/internal/h/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/h/h;->b:Lcom/facebook/ads/internal/h/h;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/internal/h/h;

    sget-object v1, Lcom/facebook/ads/internal/h/h;->a:Lcom/facebook/ads/internal/h/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/h/h;->b:Lcom/facebook/ads/internal/h/h;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/ads/internal/h/h;->d:[Lcom/facebook/ads/internal/h/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/ads/internal/h/h;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/h/h;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/h/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/h/h;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/h/h;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/h/h;->d:[Lcom/facebook/ads/internal/h/h;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/h/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/h/h;

    return-object v0
.end method
