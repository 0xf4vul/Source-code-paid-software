.class public final enum Lcom/facebook/ads/internal/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/a;

.field public static final enum b:Lcom/facebook/ads/internal/a;

.field public static final enum c:Lcom/facebook/ads/internal/a;

.field public static final enum d:Lcom/facebook/ads/internal/a;

.field public static final enum e:Lcom/facebook/ads/internal/a;

.field public static final enum f:Lcom/facebook/ads/internal/a;

.field public static final enum g:Lcom/facebook/ads/internal/a;

.field public static final enum h:Lcom/facebook/ads/internal/a;

.field public static final enum i:Lcom/facebook/ads/internal/a;

.field public static final enum j:Lcom/facebook/ads/internal/a;

.field public static final enum k:Lcom/facebook/ads/internal/a;

.field public static final enum l:Lcom/facebook/ads/internal/a;

.field public static final enum m:Lcom/facebook/ads/internal/a;

.field public static final enum n:Lcom/facebook/ads/internal/a;

.field public static final enum o:Lcom/facebook/ads/internal/a;

.field public static final enum p:Lcom/facebook/ads/internal/a;

.field private static final synthetic t:[Lcom/facebook/ads/internal/a;


# instance fields
.field public final q:I

.field public final r:Ljava/lang/String;

.field public final s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    new-instance v0, Lcom/facebook/ads/internal/a;

    const-string/jumbo v1, "UNKNOWN_ERROR"

    const/4 v3, -0x1

    const-string/jumbo v4, "unknown error"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/ads/internal/a;->a:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "NETWORK_ERROR"

    const/16 v6, 0x3e8

    const-string/jumbo v7, "Network Error"

    move v5, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->b:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "NO_FILL"

    const/16 v6, 0x3e9

    const-string/jumbo v7, "No Fill"

    move v5, v10

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->c:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "LOAD_TOO_FREQUENTLY"

    const/16 v6, 0x3ea

    const-string/jumbo v7, "Ad was re-loaded too frequently"

    move v5, v11

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->d:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "DISABLED_APP"

    const/16 v6, 0x3ed

    const-string/jumbo v7, "App is disabled from making ad requests"

    move v5, v12

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->e:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "SERVER_ERROR"

    const/4 v5, 0x5

    const/16 v6, 0x7d0

    const-string/jumbo v7, "Server Error"

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->f:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "INTERNAL_ERROR"

    const/4 v5, 0x6

    const/16 v6, 0x7d1

    const-string/jumbo v7, "Internal Error"

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->g:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "START_BEFORE_INIT"

    const/4 v5, 0x7

    const/16 v6, 0x7d4

    const-string/jumbo v7, "initAd must be called before startAd"

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->h:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "AD_REQUEST_FAILED"

    const/16 v5, 0x8

    const/16 v6, 0x457

    const-string/jumbo v7, "Facebook Ads SDK request for ads failed"

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->i:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "AD_REQUEST_TIMEOUT"

    const/16 v5, 0x9

    const/16 v6, 0x458

    const-string/jumbo v7, "Facebook Ads SDK request for ads timed out"

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->j:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "PARSER_FAILURE"

    const/16 v5, 0xa

    const/16 v6, 0x4b1

    const-string/jumbo v7, "Failed to parse Facebook Ads SDK delivery response"

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->k:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "UNKNOWN_RESPONSE"

    const/16 v5, 0xb

    const/16 v6, 0x4b2

    const-string/jumbo v7, "Unknown Facebook Ads SDK delivery response type"

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->l:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "ERROR_MESSAGE"

    const/16 v5, 0xc

    const/16 v6, 0x4b3

    const-string/jumbo v7, "Facebook Ads SDK delivery response Error message"

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->m:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "NO_AD_PLACEMENT"

    const/16 v5, 0xd

    const/16 v6, 0x516

    const-string/jumbo v7, "Facebook Ads SDK returned no ad placements"

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->n:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "BID_IMPRESSION_MISMATCH"

    const/16 v5, 0xe

    const/16 v6, 0xfa1

    const-string/jumbo v7, "Bid payload does not match placement"

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->o:Lcom/facebook/ads/internal/a;

    new-instance v3, Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "BID_PAYLOAD_ERROR"

    const/16 v5, 0xf

    const/16 v6, 0xfa2

    const-string/jumbo v7, "Invalid bid payload"

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/a;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/a;->p:Lcom/facebook/ads/internal/a;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/facebook/ads/internal/a;

    sget-object v1, Lcom/facebook/ads/internal/a;->a:Lcom/facebook/ads/internal/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/a;->b:Lcom/facebook/ads/internal/a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/facebook/ads/internal/a;->c:Lcom/facebook/ads/internal/a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/facebook/ads/internal/a;->d:Lcom/facebook/ads/internal/a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/facebook/ads/internal/a;->e:Lcom/facebook/ads/internal/a;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/ads/internal/a;->f:Lcom/facebook/ads/internal/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/ads/internal/a;->g:Lcom/facebook/ads/internal/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/ads/internal/a;->h:Lcom/facebook/ads/internal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/ads/internal/a;->i:Lcom/facebook/ads/internal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/ads/internal/a;->j:Lcom/facebook/ads/internal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/ads/internal/a;->k:Lcom/facebook/ads/internal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/ads/internal/a;->l:Lcom/facebook/ads/internal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/ads/internal/a;->m:Lcom/facebook/ads/internal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/ads/internal/a;->n:Lcom/facebook/ads/internal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/ads/internal/a;->o:Lcom/facebook/ads/internal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/ads/internal/a;->p:Lcom/facebook/ads/internal/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ads/internal/a;->t:[Lcom/facebook/ads/internal/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/ads/internal/a;->q:I

    iput-object p4, p0, Lcom/facebook/ads/internal/a;->r:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/facebook/ads/internal/a;->s:Z

    return-void
.end method

.method public static a(I)Lcom/facebook/ads/internal/a;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/a;->a:Lcom/facebook/ads/internal/a;

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/a;->a(ILcom/facebook/ads/internal/a;)Lcom/facebook/ads/internal/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILcom/facebook/ads/internal/a;)Lcom/facebook/ads/internal/a;
    .locals 5

    .prologue
    .line 0
    invoke-static {}, Lcom/facebook/ads/internal/a;->values()[Lcom/facebook/ads/internal/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 1000
    iget v4, v0, Lcom/facebook/ads/internal/a;->q:I

    .line 0
    if-ne v4, p0, :cond_1

    move-object p1, v0

    :cond_0
    return-object p1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/a;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/a;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/a;->t:[Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/ads/internal/d;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/d;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/d;-><init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;)V

    return-object v0
.end method
