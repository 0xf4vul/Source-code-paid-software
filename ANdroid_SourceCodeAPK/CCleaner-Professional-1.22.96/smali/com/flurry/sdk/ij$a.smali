.class public final enum Lcom/flurry/sdk/ij$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/ij$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ij$a;

.field public static final enum b:Lcom/flurry/sdk/ij$a;

.field public static final enum c:Lcom/flurry/sdk/ij$a;

.field public static final enum d:Lcom/flurry/sdk/ij$a;

.field public static final enum e:Lcom/flurry/sdk/ij$a;

.field public static final enum f:Lcom/flurry/sdk/ij$a;

.field private static final synthetic g:[Lcom/flurry/sdk/ij$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/flurry/sdk/ij$a;

    const-string/jumbo v1, "kUnknown"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/ij$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ij$a;->a:Lcom/flurry/sdk/ij$a;

    .line 66
    new-instance v0, Lcom/flurry/sdk/ij$a;

    const-string/jumbo v1, "kGet"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/ij$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ij$a;->b:Lcom/flurry/sdk/ij$a;

    .line 67
    new-instance v0, Lcom/flurry/sdk/ij$a;

    const-string/jumbo v1, "kPost"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/ij$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ij$a;->c:Lcom/flurry/sdk/ij$a;

    .line 68
    new-instance v0, Lcom/flurry/sdk/ij$a;

    const-string/jumbo v1, "kPut"

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/ij$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ij$a;->d:Lcom/flurry/sdk/ij$a;

    .line 69
    new-instance v0, Lcom/flurry/sdk/ij$a;

    const-string/jumbo v1, "kDelete"

    invoke-direct {v0, v1, v7}, Lcom/flurry/sdk/ij$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ij$a;->e:Lcom/flurry/sdk/ij$a;

    .line 70
    new-instance v0, Lcom/flurry/sdk/ij$a;

    const-string/jumbo v1, "kHead"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/ij$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ij$a;->f:Lcom/flurry/sdk/ij$a;

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/flurry/sdk/ij$a;

    sget-object v1, Lcom/flurry/sdk/ij$a;->a:Lcom/flurry/sdk/ij$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/ij$a;->b:Lcom/flurry/sdk/ij$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/ij$a;->c:Lcom/flurry/sdk/ij$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/ij$a;->d:Lcom/flurry/sdk/ij$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/ij$a;->e:Lcom/flurry/sdk/ij$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/ij$a;->f:Lcom/flurry/sdk/ij$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/ij$a;->g:[Lcom/flurry/sdk/ij$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ij$a;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/flurry/sdk/ij$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ij$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/ij$a;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/flurry/sdk/ij$a;->g:[Lcom/flurry/sdk/ij$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ij$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ij$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/flurry/sdk/ij$2;->a:[I

    invoke-virtual {p0}, Lcom/flurry/sdk/ij$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 75
    :pswitch_0
    const-string/jumbo v0, "POST"

    goto :goto_0

    .line 78
    :pswitch_1
    const-string/jumbo v0, "PUT"

    goto :goto_0

    .line 81
    :pswitch_2
    const-string/jumbo v0, "DELETE"

    goto :goto_0

    .line 84
    :pswitch_3
    const-string/jumbo v0, "HEAD"

    goto :goto_0

    .line 87
    :pswitch_4
    const-string/jumbo v0, "GET"

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
