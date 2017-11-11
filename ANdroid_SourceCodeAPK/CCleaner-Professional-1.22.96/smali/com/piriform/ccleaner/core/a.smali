.class public final enum Lcom/piriform/ccleaner/core/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/core/a;",
        ">;",
        "Lcom/piriform/ccleaner/core/f",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/piriform/ccleaner/core/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/core/a;

.field public static final enum b:Lcom/piriform/ccleaner/core/a;

.field public static final enum c:Lcom/piriform/ccleaner/core/a;

.field public static final enum d:Lcom/piriform/ccleaner/core/a;

.field public static final enum e:Lcom/piriform/ccleaner/core/a;

.field private static final g:Lcom/piriform/ccleaner/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/core/j",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/piriform/ccleaner/core/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/piriform/ccleaner/core/a;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/piriform/ccleaner/core/a;

    const-string/jumbo v1, "THREE_MONTHS"

    invoke-direct {v0, v1, v2, v2}, Lcom/piriform/ccleaner/core/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a;->a:Lcom/piriform/ccleaner/core/a;

    .line 5
    new-instance v0, Lcom/piriform/ccleaner/core/a;

    const-string/jumbo v1, "ONE_MONTH"

    invoke-direct {v0, v1, v3, v3}, Lcom/piriform/ccleaner/core/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a;->b:Lcom/piriform/ccleaner/core/a;

    .line 6
    new-instance v0, Lcom/piriform/ccleaner/core/a;

    const-string/jumbo v1, "TWO_WEEKS"

    invoke-direct {v0, v1, v4, v4}, Lcom/piriform/ccleaner/core/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a;->c:Lcom/piriform/ccleaner/core/a;

    .line 7
    new-instance v0, Lcom/piriform/ccleaner/core/a;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v5, v5}, Lcom/piriform/ccleaner/core/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a;->d:Lcom/piriform/ccleaner/core/a;

    .line 8
    new-instance v0, Lcom/piriform/ccleaner/core/a;

    const-string/jumbo v1, "NOTHING"

    invoke-direct {v0, v1, v6, v6}, Lcom/piriform/ccleaner/core/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/a;->e:Lcom/piriform/ccleaner/core/a;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/piriform/ccleaner/core/a;

    sget-object v1, Lcom/piriform/ccleaner/core/a;->a:Lcom/piriform/ccleaner/core/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/piriform/ccleaner/core/a;->b:Lcom/piriform/ccleaner/core/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/core/a;->c:Lcom/piriform/ccleaner/core/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/core/a;->d:Lcom/piriform/ccleaner/core/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/core/a;->e:Lcom/piriform/ccleaner/core/a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/piriform/ccleaner/core/a;->h:[Lcom/piriform/ccleaner/core/a;

    .line 10
    new-instance v0, Lcom/piriform/ccleaner/core/j;

    const-class v1, Lcom/piriform/ccleaner/core/a;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/core/j;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/piriform/ccleaner/core/a;->g:Lcom/piriform/ccleaner/core/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/piriform/ccleaner/core/a;->f:I

    .line 15
    return-void
.end method

.method public static a(I)Lcom/piriform/ccleaner/core/a;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/piriform/ccleaner/core/a;->g:Lcom/piriform/ccleaner/core/j;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/j;->a(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/core/a;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/piriform/ccleaner/core/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/core/a;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/piriform/ccleaner/core/a;->h:[Lcom/piriform/ccleaner/core/a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/core/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/core/a;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/piriform/ccleaner/core/a;->f:I

    sget-object v1, Lcom/piriform/ccleaner/core/a;->e:Lcom/piriform/ccleaner/core/a;

    iget v1, v1, Lcom/piriform/ccleaner/core/a;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Lcom/piriform/ccleaner/core/a;->f:I

    sget-object v1, Lcom/piriform/ccleaner/core/a;->e:Lcom/piriform/ccleaner/core/a;

    iget v1, v1, Lcom/piriform/ccleaner/core/a;->f:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    .line 1019
    iget v0, p0, Lcom/piriform/ccleaner/core/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    return-object v0
.end method
