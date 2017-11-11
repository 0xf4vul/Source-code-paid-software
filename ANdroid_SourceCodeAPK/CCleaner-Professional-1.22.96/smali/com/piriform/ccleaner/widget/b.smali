.class public final enum Lcom/piriform/ccleaner/widget/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/widget/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/widget/b;

.field public static final enum b:Lcom/piriform/ccleaner/widget/b;

.field public static final enum c:Lcom/piriform/ccleaner/widget/b;

.field public static final d:Lcom/piriform/ccleaner/widget/b;

.field private static final synthetic f:[Lcom/piriform/ccleaner/widget/b;


# instance fields
.field final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/piriform/ccleaner/widget/b;

    const-string/jumbo v1, "CLEANING"

    const-string/jumbo v2, "cleaning"

    invoke-direct {v0, v1, v3, v2}, Lcom/piriform/ccleaner/widget/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/widget/b;->a:Lcom/piriform/ccleaner/widget/b;

    .line 7
    new-instance v0, Lcom/piriform/ccleaner/widget/b;

    const-string/jumbo v1, "CLEANING_FINISHED"

    const-string/jumbo v2, "cleaning_finished"

    invoke-direct {v0, v1, v4, v2}, Lcom/piriform/ccleaner/widget/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/widget/b;->b:Lcom/piriform/ccleaner/widget/b;

    .line 8
    new-instance v0, Lcom/piriform/ccleaner/widget/b;

    const-string/jumbo v1, "READY_TO_CLEAN"

    const-string/jumbo v2, "ready"

    invoke-direct {v0, v1, v5, v2}, Lcom/piriform/ccleaner/widget/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/widget/b;->c:Lcom/piriform/ccleaner/widget/b;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/widget/b;

    sget-object v1, Lcom/piriform/ccleaner/widget/b;->a:Lcom/piriform/ccleaner/widget/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/widget/b;->b:Lcom/piriform/ccleaner/widget/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/widget/b;->c:Lcom/piriform/ccleaner/widget/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/piriform/ccleaner/widget/b;->f:[Lcom/piriform/ccleaner/widget/b;

    .line 10
    sget-object v0, Lcom/piriform/ccleaner/widget/b;->c:Lcom/piriform/ccleaner/widget/b;

    sput-object v0, Lcom/piriform/ccleaner/widget/b;->d:Lcom/piriform/ccleaner/widget/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/piriform/ccleaner/widget/b;->e:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/piriform/ccleaner/widget/b;
    .locals 5

    .prologue
    .line 15
    invoke-static {}, Lcom/piriform/ccleaner/widget/b;->values()[Lcom/piriform/ccleaner/widget/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 16
    iget-object v4, v0, Lcom/piriform/ccleaner/widget/b;->e:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    :goto_1
    return-object v0

    .line 15
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 20
    :cond_1
    sget-object v0, Lcom/piriform/ccleaner/widget/b;->d:Lcom/piriform/ccleaner/widget/b;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/widget/b;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/piriform/ccleaner/widget/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/widget/b;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/widget/b;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/piriform/ccleaner/widget/b;->f:[Lcom/piriform/ccleaner/widget/b;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/widget/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/widget/b;

    return-object v0
.end method
