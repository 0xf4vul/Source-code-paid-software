.class public final enum Lcom/avast/a/b/a/a$k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avast/a/b/a/a$k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/avast/a/b/a/a$k;

.field public static final enum b:Lcom/avast/a/b/a/a$k;

.field public static final enum c:Lcom/avast/a/b/a/a$k;

.field private static e:Lcom/google/a/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/h$a",
            "<",
            "Lcom/avast/a/b/a/a$k;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/avast/a/b/a/a$k;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 114
    new-instance v0, Lcom/avast/a/b/a/a$k;

    const-string/jumbo v1, "CLIENT"

    invoke-direct {v0, v1, v4, v2}, Lcom/avast/a/b/a/a$k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/a/b/a/a$k;->a:Lcom/avast/a/b/a/a$k;

    .line 122
    new-instance v0, Lcom/avast/a/b/a/a$k;

    const-string/jumbo v1, "BACKEND"

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/a/b/a/a$k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/a/b/a/a$k;->b:Lcom/avast/a/b/a/a$k;

    .line 130
    new-instance v0, Lcom/avast/a/b/a/a$k;

    const-string/jumbo v1, "PROXY"

    invoke-direct {v0, v1, v3, v5}, Lcom/avast/a/b/a/a$k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/a/b/a/a$k;->c:Lcom/avast/a/b/a/a$k;

    .line 105
    new-array v0, v5, [Lcom/avast/a/b/a/a$k;

    sget-object v1, Lcom/avast/a/b/a/a$k;->a:Lcom/avast/a/b/a/a$k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/a/b/a/a$k;->b:Lcom/avast/a/b/a/a$k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/a/b/a/a$k;->c:Lcom/avast/a/b/a/a$k;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/a/b/a/a$k;->f:[Lcom/avast/a/b/a/a$k;

    .line 175
    new-instance v0, Lcom/avast/a/b/a/a$k$1;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$k$1;-><init>()V

    sput-object v0, Lcom/avast/a/b/a/a$k;->e:Lcom/google/a/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 185
    iput p3, p0, Lcom/avast/a/b/a/a$k;->d:I

    .line 186
    return-void
.end method

.method public static a(I)Lcom/avast/a/b/a/a$k;
    .locals 1

    .prologue
    .line 162
    packed-switch p0, :pswitch_data_0

    .line 166
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    sget-object v0, Lcom/avast/a/b/a/a$k;->a:Lcom/avast/a/b/a/a$k;

    goto :goto_0

    .line 164
    :pswitch_1
    sget-object v0, Lcom/avast/a/b/a/a$k;->b:Lcom/avast/a/b/a/a$k;

    goto :goto_0

    .line 165
    :pswitch_2
    sget-object v0, Lcom/avast/a/b/a/a$k;->c:Lcom/avast/a/b/a/a$k;

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/a/b/a/a$k;
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/avast/a/b/a/a$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$k;

    return-object v0
.end method

.method public static values()[Lcom/avast/a/b/a/a$k;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/avast/a/b/a/a$k;->f:[Lcom/avast/a/b/a/a$k;

    invoke-virtual {v0}, [Lcom/avast/a/b/a/a$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/a/b/a/a$k;

    return-object v0
.end method
