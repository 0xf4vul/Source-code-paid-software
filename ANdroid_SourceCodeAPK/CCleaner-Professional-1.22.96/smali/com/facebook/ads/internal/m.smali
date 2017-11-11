.class public final enum Lcom/facebook/ads/internal/m;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/m;

.field public static final enum b:Lcom/facebook/ads/internal/m;

.field public static final enum c:Lcom/facebook/ads/internal/m;

.field public static final enum d:Lcom/facebook/ads/internal/m;

.field public static final enum e:Lcom/facebook/ads/internal/m;

.field public static final enum f:Lcom/facebook/ads/internal/m;

.field public static final enum g:Lcom/facebook/ads/internal/m;

.field public static final enum h:Lcom/facebook/ads/internal/m;

.field public static final enum i:Lcom/facebook/ads/internal/m;

.field private static final synthetic k:[Lcom/facebook/ads/internal/m;


# instance fields
.field public j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/facebook/ads/internal/m;

    const-string/jumbo v1, "REWARDED_VIDEO_COMPLETE"

    const-string/jumbo v2, "com.facebook.ads.rewarded_video.completed"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/ads/internal/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/m;->a:Lcom/facebook/ads/internal/m;

    new-instance v0, Lcom/facebook/ads/internal/m;

    const-string/jumbo v1, "REWARDED_VIDEO_COMPLETE_WITHOUT_REWARD"

    const-string/jumbo v2, "com.facebook.ads.rewarded_video.completed.without.reward"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/ads/internal/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/m;->b:Lcom/facebook/ads/internal/m;

    new-instance v0, Lcom/facebook/ads/internal/m;

    const-string/jumbo v1, "REWARDED_VIDEO_END_ACTIVITY"

    const-string/jumbo v2, "com.facebook.ads.rewarded_video.error"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/ads/internal/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/m;->c:Lcom/facebook/ads/internal/m;

    new-instance v0, Lcom/facebook/ads/internal/m;

    const-string/jumbo v1, "REWARDED_VIDEO_ERROR"

    const-string/jumbo v2, "com.facebook.ads.rewarded_video.error"

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/ads/internal/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/m;->d:Lcom/facebook/ads/internal/m;

    new-instance v0, Lcom/facebook/ads/internal/m;

    const-string/jumbo v1, "REWARDED_VIDEO_AD_CLICK"

    const-string/jumbo v2, "com.facebook.ads.rewarded_video.ad_click"

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/ads/internal/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/m;->e:Lcom/facebook/ads/internal/m;

    new-instance v0, Lcom/facebook/ads/internal/m;

    const-string/jumbo v1, "REWARDED_VIDEO_IMPRESSION"

    const/4 v2, 0x5

    const-string/jumbo v3, "com.facebook.ads.rewarded_video.ad_impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/m;->f:Lcom/facebook/ads/internal/m;

    new-instance v0, Lcom/facebook/ads/internal/m;

    const-string/jumbo v1, "REWARDED_VIDEO_CLOSED"

    const/4 v2, 0x6

    const-string/jumbo v3, "com.facebook.ads.rewarded_video.closed"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/m;->g:Lcom/facebook/ads/internal/m;

    new-instance v0, Lcom/facebook/ads/internal/m;

    const-string/jumbo v1, "REWARD_SERVER_SUCCESS"

    const/4 v2, 0x7

    const-string/jumbo v3, "com.facebook.ads.rewarded_video.server_reward_success"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/m;->h:Lcom/facebook/ads/internal/m;

    new-instance v0, Lcom/facebook/ads/internal/m;

    const-string/jumbo v1, "REWARD_SERVER_FAILED"

    const/16 v2, 0x8

    const-string/jumbo v3, "com.facebook.ads.rewarded_video.server_reward_failed"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/m;->i:Lcom/facebook/ads/internal/m;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/facebook/ads/internal/m;

    sget-object v1, Lcom/facebook/ads/internal/m;->a:Lcom/facebook/ads/internal/m;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/m;->b:Lcom/facebook/ads/internal/m;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/internal/m;->c:Lcom/facebook/ads/internal/m;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ads/internal/m;->d:Lcom/facebook/ads/internal/m;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/ads/internal/m;->e:Lcom/facebook/ads/internal/m;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/ads/internal/m;->f:Lcom/facebook/ads/internal/m;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/ads/internal/m;->g:Lcom/facebook/ads/internal/m;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/ads/internal/m;->h:Lcom/facebook/ads/internal/m;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/ads/internal/m;->i:Lcom/facebook/ads/internal/m;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ads/internal/m;->k:[Lcom/facebook/ads/internal/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/ads/internal/m;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/m;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/m;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/m;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/m;->k:[Lcom/facebook/ads/internal/m;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/m;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/m;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
