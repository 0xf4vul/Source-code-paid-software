.class public final enum Lcom/piriform/ccleaner/b/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/b/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/b/r;

.field public static final enum b:Lcom/piriform/ccleaner/b/r;

.field private static final synthetic c:[Lcom/piriform/ccleaner/b/r;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/piriform/ccleaner/b/r;

    const-string/jumbo v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/b/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/b/r;->a:Lcom/piriform/ccleaner/b/r;

    .line 6
    new-instance v0, Lcom/piriform/ccleaner/b/r;

    const-string/jumbo v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/piriform/ccleaner/b/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/b/r;->b:Lcom/piriform/ccleaner/b/r;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/piriform/ccleaner/b/r;

    sget-object v1, Lcom/piriform/ccleaner/b/r;->a:Lcom/piriform/ccleaner/b/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/piriform/ccleaner/b/r;->b:Lcom/piriform/ccleaner/b/r;

    aput-object v1, v0, v3

    sput-object v0, Lcom/piriform/ccleaner/b/r;->c:[Lcom/piriform/ccleaner/b/r;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/b/r;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/piriform/ccleaner/b/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/b/r;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/b/r;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/piriform/ccleaner/b/r;->c:[Lcom/piriform/ccleaner/b/r;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/b/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/b/r;

    return-object v0
.end method
