.class public final Lcom/facebook/ads/internal/b/q$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/b/q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/facebook/ads/internal/b/q$a;->a:I

    sput v4, Lcom/facebook/ads/internal/b/q$a;->b:I

    sput v0, Lcom/facebook/ads/internal/b/q$a;->c:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/facebook/ads/internal/b/q$a;->a:I

    aput v2, v0, v1

    sget v1, Lcom/facebook/ads/internal/b/q$a;->b:I

    aput v1, v0, v3

    sget v1, Lcom/facebook/ads/internal/b/q$a;->c:I

    aput v1, v0, v4

    sput-object v0, Lcom/facebook/ads/internal/b/q$a;->d:[I

    return-void
.end method

.method public static a(I)I
    .locals 1

    if-nez p0, :cond_0

    sget v0, Lcom/facebook/ads/internal/b/q$a;->a:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/internal/b/q$a;->c:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/facebook/ads/internal/b/q$a;->b:I

    goto :goto_0
.end method
