.class public final enum Lcom/androidplot/b/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/b/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/androidplot/b/q;

.field public static final enum b:Lcom/androidplot/b/q;

.field public static final enum c:Lcom/androidplot/b/q;

.field public static final enum d:Lcom/androidplot/b/q;

.field public static final enum e:Lcom/androidplot/b/q;

.field public static final enum f:Lcom/androidplot/b/q;

.field private static final synthetic g:[Lcom/androidplot/b/q;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/androidplot/b/q;

    const-string/jumbo v1, "ABSOLUTE_FROM_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/b/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/q;->a:Lcom/androidplot/b/q;

    .line 21
    new-instance v0, Lcom/androidplot/b/q;

    const-string/jumbo v1, "ABSOLUTE_FROM_RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/b/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/q;->b:Lcom/androidplot/b/q;

    .line 22
    new-instance v0, Lcom/androidplot/b/q;

    const-string/jumbo v1, "ABSOLUTE_FROM_CENTER"

    invoke-direct {v0, v1, v5}, Lcom/androidplot/b/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/q;->c:Lcom/androidplot/b/q;

    .line 23
    new-instance v0, Lcom/androidplot/b/q;

    const-string/jumbo v1, "RELATIVE_TO_LEFT"

    invoke-direct {v0, v1, v6}, Lcom/androidplot/b/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/q;->d:Lcom/androidplot/b/q;

    .line 24
    new-instance v0, Lcom/androidplot/b/q;

    const-string/jumbo v1, "RELATIVE_TO_RIGHT"

    invoke-direct {v0, v1, v7}, Lcom/androidplot/b/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/q;->e:Lcom/androidplot/b/q;

    .line 25
    new-instance v0, Lcom/androidplot/b/q;

    const-string/jumbo v1, "RELATIVE_TO_CENTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/androidplot/b/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/b/q;->f:Lcom/androidplot/b/q;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/androidplot/b/q;

    sget-object v1, Lcom/androidplot/b/q;->a:Lcom/androidplot/b/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/b/q;->b:Lcom/androidplot/b/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/androidplot/b/q;->c:Lcom/androidplot/b/q;

    aput-object v1, v0, v5

    sget-object v1, Lcom/androidplot/b/q;->d:Lcom/androidplot/b/q;

    aput-object v1, v0, v6

    sget-object v1, Lcom/androidplot/b/q;->e:Lcom/androidplot/b/q;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/androidplot/b/q;->f:Lcom/androidplot/b/q;

    aput-object v2, v0, v1

    sput-object v0, Lcom/androidplot/b/q;->g:[Lcom/androidplot/b/q;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/b/q;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/androidplot/b/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/b/q;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/b/q;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/androidplot/b/q;->g:[Lcom/androidplot/b/q;

    invoke-virtual {v0}, [Lcom/androidplot/b/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/b/q;

    return-object v0
.end method
