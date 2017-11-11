.class public final enum Lcom/androidplot/b/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/b/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/androidplot/b/k;

.field public static final enum b:Lcom/androidplot/b/k;

.field public static final enum c:Lcom/androidplot/b/k;

.field private static final synthetic d:[Lcom/androidplot/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/androidplot/b/k;

    const-string/jumbo v1, "ABSOLUTE"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    .line 32
    new-instance v0, Lcom/androidplot/b/k;

    const-string/jumbo v1, "RELATIVE"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/k;->b:Lcom/androidplot/b/k;

    .line 33
    new-instance v0, Lcom/androidplot/b/k;

    const-string/jumbo v1, "FILL"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/k;->c:Lcom/androidplot/b/k;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/androidplot/b/k;

    sget-object v1, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/b/k;->b:Lcom/androidplot/b/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/b/k;->c:Lcom/androidplot/b/k;

    aput-object v1, v0, v4

    sput-object v0, Lcom/androidplot/b/k;->d:[Lcom/androidplot/b/k;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/b/k;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/androidplot/b/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/b/k;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/b/k;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/androidplot/b/k;->d:[Lcom/androidplot/b/k;

    invoke-virtual {v0}, [Lcom/androidplot/b/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/b/k;

    return-object v0
.end method
