.class public final enum Lcom/facebook/ads/internal/b/l;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/b/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/b/l;

.field public static final enum b:Lcom/facebook/ads/internal/b/l;

.field public static final enum c:Lcom/facebook/ads/internal/b/l;

.field public static final enum d:Lcom/facebook/ads/internal/b/l;

.field public static final enum e:Lcom/facebook/ads/internal/b/l;

.field private static final synthetic f:[Lcom/facebook/ads/internal/b/l;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/b/l;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/b/l;->a:Lcom/facebook/ads/internal/b/l;

    new-instance v0, Lcom/facebook/ads/internal/b/l;

    const-string/jumbo v1, "AN"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/b/l;->b:Lcom/facebook/ads/internal/b/l;

    new-instance v0, Lcom/facebook/ads/internal/b/l;

    const-string/jumbo v1, "ADMOB"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/internal/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/b/l;->c:Lcom/facebook/ads/internal/b/l;

    new-instance v0, Lcom/facebook/ads/internal/b/l;

    const-string/jumbo v1, "INMOBI"

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/internal/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/b/l;->d:Lcom/facebook/ads/internal/b/l;

    new-instance v0, Lcom/facebook/ads/internal/b/l;

    const-string/jumbo v1, "YAHOO"

    invoke-direct {v0, v1, v6}, Lcom/facebook/ads/internal/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/b/l;->e:Lcom/facebook/ads/internal/b/l;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/internal/b/l;

    sget-object v1, Lcom/facebook/ads/internal/b/l;->a:Lcom/facebook/ads/internal/b/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/b/l;->b:Lcom/facebook/ads/internal/b/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/b/l;->c:Lcom/facebook/ads/internal/b/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/b/l;->d:Lcom/facebook/ads/internal/b/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/internal/b/l;->e:Lcom/facebook/ads/internal/b/l;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/ads/internal/b/l;->f:[Lcom/facebook/ads/internal/b/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/ads/internal/b/l;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/b/l;->a:Lcom/facebook/ads/internal/b/l;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-class v0, Lcom/facebook/ads/internal/b/l;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/b/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/ads/internal/b/l;->a:Lcom/facebook/ads/internal/b/l;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/b/l;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/b/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/b/l;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/b/l;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/b/l;->f:[Lcom/facebook/ads/internal/b/l;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/b/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/b/l;

    return-object v0
.end method
