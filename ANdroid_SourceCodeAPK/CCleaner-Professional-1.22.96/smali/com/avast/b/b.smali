.class public abstract enum Lcom/avast/b/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avast/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/avast/b/b;

.field public static final enum b:Lcom/avast/b/b;

.field private static final synthetic c:[Lcom/avast/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lcom/avast/b/b$1;

    const-string/jumbo v1, "V1"

    invoke-direct {v0, v1}, Lcom/avast/b/b$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/avast/b/b;->a:Lcom/avast/b/b;

    .line 34
    new-instance v0, Lcom/avast/b/b$2;

    const-string/jumbo v1, "V2"

    invoke-direct {v0, v1}, Lcom/avast/b/b$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/avast/b/b;->b:Lcom/avast/b/b;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avast/b/b;

    const/4 v1, 0x0

    sget-object v2, Lcom/avast/b/b;->a:Lcom/avast/b/b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/avast/b/b;->b:Lcom/avast/b/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/b/b;->c:[Lcom/avast/b/b;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/avast/b/b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/b/b;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/avast/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/b/b;

    return-object v0
.end method

.method public static values()[Lcom/avast/b/b;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/avast/b/b;->c:[Lcom/avast/b/b;

    invoke-virtual {v0}, [Lcom/avast/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/b/b;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Ljavax/crypto/Mac;
.end method

.method public abstract c()Lcom/avast/b/a;
.end method
