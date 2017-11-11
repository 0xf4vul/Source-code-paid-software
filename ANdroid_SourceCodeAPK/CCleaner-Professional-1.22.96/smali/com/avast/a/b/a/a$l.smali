.class public final enum Lcom/avast/a/b/a/a$l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avast/a/b/a/a$l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/avast/a/b/a/a$l;

.field public static final enum b:Lcom/avast/a/b/a/a$l;

.field public static final enum c:Lcom/avast/a/b/a/a$l;

.field public static final enum d:Lcom/avast/a/b/a/a$l;

.field public static final enum e:Lcom/avast/a/b/a/a$l;

.field private static g:Lcom/google/a/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/h$a",
            "<",
            "Lcom/avast/a/b/a/a$l;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/avast/a/b/a/a$l;


# instance fields
.field final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 23
    new-instance v0, Lcom/avast/a/b/a/a$l;

    const-string/jumbo v1, "WINDOWS"

    invoke-direct {v0, v1, v7, v3}, Lcom/avast/a/b/a/a$l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/a/b/a/a$l;->a:Lcom/avast/a/b/a/a$l;

    .line 27
    new-instance v0, Lcom/avast/a/b/a/a$l;

    const-string/jumbo v1, "OSX"

    invoke-direct {v0, v1, v3, v4}, Lcom/avast/a/b/a/a$l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/a/b/a/a$l;->b:Lcom/avast/a/b/a/a$l;

    .line 31
    new-instance v0, Lcom/avast/a/b/a/a$l;

    const-string/jumbo v1, "IOS"

    invoke-direct {v0, v1, v4, v5}, Lcom/avast/a/b/a/a$l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/a/b/a/a$l;->c:Lcom/avast/a/b/a/a$l;

    .line 35
    new-instance v0, Lcom/avast/a/b/a/a$l;

    const-string/jumbo v1, "LINUX"

    invoke-direct {v0, v1, v5, v6}, Lcom/avast/a/b/a/a$l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/a/b/a/a$l;->d:Lcom/avast/a/b/a/a$l;

    .line 39
    new-instance v0, Lcom/avast/a/b/a/a$l;

    const-string/jumbo v1, "ANDROID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/avast/a/b/a/a$l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/a/b/a/a$l;->e:Lcom/avast/a/b/a/a$l;

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/avast/a/b/a/a$l;

    sget-object v1, Lcom/avast/a/b/a/a$l;->a:Lcom/avast/a/b/a/a$l;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avast/a/b/a/a$l;->b:Lcom/avast/a/b/a/a$l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/a/b/a/a$l;->c:Lcom/avast/a/b/a/a$l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/a/b/a/a$l;->d:Lcom/avast/a/b/a/a$l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/a/b/a/a$l;->e:Lcom/avast/a/b/a/a$l;

    aput-object v1, v0, v6

    sput-object v0, Lcom/avast/a/b/a/a$l;->h:[Lcom/avast/a/b/a/a$l;

    .line 82
    new-instance v0, Lcom/avast/a/b/a/a$l$1;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$l$1;-><init>()V

    sput-object v0, Lcom/avast/a/b/a/a$l;->g:Lcom/google/a/h$a;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Lcom/avast/a/b/a/a$l;->f:I

    .line 93
    return-void
.end method

.method public static a(I)Lcom/avast/a/b/a/a$l;
    .locals 1

    .prologue
    .line 67
    packed-switch p0, :pswitch_data_0

    .line 73
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    sget-object v0, Lcom/avast/a/b/a/a$l;->a:Lcom/avast/a/b/a/a$l;

    goto :goto_0

    .line 69
    :pswitch_1
    sget-object v0, Lcom/avast/a/b/a/a$l;->b:Lcom/avast/a/b/a/a$l;

    goto :goto_0

    .line 70
    :pswitch_2
    sget-object v0, Lcom/avast/a/b/a/a$l;->c:Lcom/avast/a/b/a/a$l;

    goto :goto_0

    .line 71
    :pswitch_3
    sget-object v0, Lcom/avast/a/b/a/a$l;->d:Lcom/avast/a/b/a/a$l;

    goto :goto_0

    .line 72
    :pswitch_4
    sget-object v0, Lcom/avast/a/b/a/a$l;->e:Lcom/avast/a/b/a/a$l;

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/a/b/a/a$l;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/avast/a/b/a/a$l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$l;

    return-object v0
.end method

.method public static values()[Lcom/avast/a/b/a/a$l;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/avast/a/b/a/a$l;->h:[Lcom/avast/a/b/a/a$l;

    invoke-virtual {v0}, [Lcom/avast/a/b/a/a$l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/a/b/a/a$l;

    return-object v0
.end method
