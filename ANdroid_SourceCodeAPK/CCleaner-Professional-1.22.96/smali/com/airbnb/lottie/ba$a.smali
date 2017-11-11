.class final enum Lcom/airbnb/lottie/ba$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/lottie/ba$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/airbnb/lottie/ba$a;

.field public static final enum b:Lcom/airbnb/lottie/ba$a;

.field public static final enum c:Lcom/airbnb/lottie/ba$a;

.field public static final enum d:Lcom/airbnb/lottie/ba$a;

.field public static final enum e:Lcom/airbnb/lottie/ba$a;

.field private static final synthetic f:[Lcom/airbnb/lottie/ba$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/airbnb/lottie/ba$a;

    const-string/jumbo v1, "Merge"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/ba$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/ba$a;->a:Lcom/airbnb/lottie/ba$a;

    .line 12
    new-instance v0, Lcom/airbnb/lottie/ba$a;

    const-string/jumbo v1, "Add"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/ba$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/ba$a;->b:Lcom/airbnb/lottie/ba$a;

    .line 13
    new-instance v0, Lcom/airbnb/lottie/ba$a;

    const-string/jumbo v1, "Subtract"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/lottie/ba$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/ba$a;->c:Lcom/airbnb/lottie/ba$a;

    .line 14
    new-instance v0, Lcom/airbnb/lottie/ba$a;

    const-string/jumbo v1, "Intersect"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/lottie/ba$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/ba$a;->d:Lcom/airbnb/lottie/ba$a;

    .line 15
    new-instance v0, Lcom/airbnb/lottie/ba$a;

    const-string/jumbo v1, "ExcludeIntersections"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/lottie/ba$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/ba$a;->e:Lcom/airbnb/lottie/ba$a;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/airbnb/lottie/ba$a;

    sget-object v1, Lcom/airbnb/lottie/ba$a;->a:Lcom/airbnb/lottie/ba$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/lottie/ba$a;->b:Lcom/airbnb/lottie/ba$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/lottie/ba$a;->c:Lcom/airbnb/lottie/ba$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/lottie/ba$a;->d:Lcom/airbnb/lottie/ba$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/lottie/ba$a;->e:Lcom/airbnb/lottie/ba$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/airbnb/lottie/ba$a;->f:[Lcom/airbnb/lottie/ba$a;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(I)Lcom/airbnb/lottie/ba$a;
    .locals 1

    .prologue
    .line 10
    .line 1018
    packed-switch p0, :pswitch_data_0

    .line 1030
    sget-object v0, Lcom/airbnb/lottie/ba$a;->a:Lcom/airbnb/lottie/ba$a;

    .line 1028
    :goto_0
    return-object v0

    .line 1020
    :pswitch_0
    sget-object v0, Lcom/airbnb/lottie/ba$a;->a:Lcom/airbnb/lottie/ba$a;

    goto :goto_0

    .line 1022
    :pswitch_1
    sget-object v0, Lcom/airbnb/lottie/ba$a;->b:Lcom/airbnb/lottie/ba$a;

    goto :goto_0

    .line 1024
    :pswitch_2
    sget-object v0, Lcom/airbnb/lottie/ba$a;->c:Lcom/airbnb/lottie/ba$a;

    goto :goto_0

    .line 1026
    :pswitch_3
    sget-object v0, Lcom/airbnb/lottie/ba$a;->d:Lcom/airbnb/lottie/ba$a;

    goto :goto_0

    .line 1028
    :pswitch_4
    sget-object v0, Lcom/airbnb/lottie/ba$a;->e:Lcom/airbnb/lottie/ba$a;

    goto :goto_0

    .line 1018
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

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/ba$a;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/airbnb/lottie/ba$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ba$a;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/lottie/ba$a;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/airbnb/lottie/ba$a;->f:[Lcom/airbnb/lottie/ba$a;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/ba$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/ba$a;

    return-object v0
.end method
