.class final Lcom/airbnb/lottie/bz$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/lottie/bz$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 10
    sput v3, Lcom/airbnb/lottie/bz$a;->a:I

    .line 11
    sput v0, Lcom/airbnb/lottie/bz$a;->b:I

    .line 9
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/airbnb/lottie/bz$a;->a:I

    aput v2, v0, v1

    sget v1, Lcom/airbnb/lottie/bz$a;->b:I

    aput v1, v0, v3

    sput-object v0, Lcom/airbnb/lottie/bz$a;->c:[I

    return-void
.end method

.method static a(I)I
    .locals 3

    .prologue
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown trim path type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :pswitch_0
    sget v0, Lcom/airbnb/lottie/bz$a;->a:I

    .line 18
    :goto_0
    return v0

    :pswitch_1
    sget v0, Lcom/airbnb/lottie/bz$a;->b:I

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
