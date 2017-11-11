.class public final enum Lcom/facebook/ads/AudienceNetworkActivity$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AudienceNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/AudienceNetworkActivity$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/AudienceNetworkActivity$b;

.field public static final enum b:Lcom/facebook/ads/AudienceNetworkActivity$b;

.field public static final enum c:Lcom/facebook/ads/AudienceNetworkActivity$b;

.field public static final enum d:Lcom/facebook/ads/AudienceNetworkActivity$b;

.field public static final enum e:Lcom/facebook/ads/AudienceNetworkActivity$b;

.field private static final synthetic f:[Lcom/facebook/ads/AudienceNetworkActivity$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$b;

    const-string/jumbo v1, "DISPLAY"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AudienceNetworkActivity$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AudienceNetworkActivity$b;->a:Lcom/facebook/ads/AudienceNetworkActivity$b;

    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$b;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/AudienceNetworkActivity$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AudienceNetworkActivity$b;->b:Lcom/facebook/ads/AudienceNetworkActivity$b;

    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$b;

    const-string/jumbo v1, "REWARDED_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/AudienceNetworkActivity$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AudienceNetworkActivity$b;->c:Lcom/facebook/ads/AudienceNetworkActivity$b;

    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$b;

    const-string/jumbo v1, "NATIVE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/AudienceNetworkActivity$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AudienceNetworkActivity$b;->d:Lcom/facebook/ads/AudienceNetworkActivity$b;

    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$b;

    const-string/jumbo v1, "BROWSER"

    invoke-direct {v0, v1, v6}, Lcom/facebook/ads/AudienceNetworkActivity$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AudienceNetworkActivity$b;->e:Lcom/facebook/ads/AudienceNetworkActivity$b;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/AudienceNetworkActivity$b;

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$b;->a:Lcom/facebook/ads/AudienceNetworkActivity$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$b;->b:Lcom/facebook/ads/AudienceNetworkActivity$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$b;->c:Lcom/facebook/ads/AudienceNetworkActivity$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$b;->d:Lcom/facebook/ads/AudienceNetworkActivity$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$b;->e:Lcom/facebook/ads/AudienceNetworkActivity$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/ads/AudienceNetworkActivity$b;->f:[Lcom/facebook/ads/AudienceNetworkActivity$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AudienceNetworkActivity$b;
    .locals 1

    const-class v0, Lcom/facebook/ads/AudienceNetworkActivity$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AudienceNetworkActivity$b;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/AudienceNetworkActivity$b;
    .locals 1

    sget-object v0, Lcom/facebook/ads/AudienceNetworkActivity$b;->f:[Lcom/facebook/ads/AudienceNetworkActivity$b;

    invoke-virtual {v0}, [Lcom/facebook/ads/AudienceNetworkActivity$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AudienceNetworkActivity$b;

    return-object v0
.end method
