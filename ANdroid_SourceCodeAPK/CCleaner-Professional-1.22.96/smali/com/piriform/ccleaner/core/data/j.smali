.class public final enum Lcom/piriform/ccleaner/core/data/j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/core/data/j;",
        ">;",
        "Lcom/piriform/ccleaner/core/f",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/piriform/ccleaner/core/data/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/core/data/j;

.field public static final enum b:Lcom/piriform/ccleaner/core/data/j;

.field public static final enum c:Lcom/piriform/ccleaner/core/data/j;

.field private static final d:Lcom/piriform/ccleaner/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/core/j",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/piriform/ccleaner/core/data/j;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/piriform/ccleaner/core/data/j;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/piriform/ccleaner/core/data/j;

    const-string/jumbo v1, "ALL"

    sget-object v2, Lcom/piriform/ccleaner/core/g;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lcom/piriform/ccleaner/core/data/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/j;->a:Lcom/piriform/ccleaner/core/data/j;

    .line 10
    new-instance v0, Lcom/piriform/ccleaner/core/data/j;

    const-string/jumbo v1, "USER"

    invoke-direct {v0, v1, v4, v3}, Lcom/piriform/ccleaner/core/data/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/j;->b:Lcom/piriform/ccleaner/core/data/j;

    .line 11
    new-instance v0, Lcom/piriform/ccleaner/core/data/j;

    const-string/jumbo v1, "SYSTEM"

    invoke-direct {v0, v1, v5, v4}, Lcom/piriform/ccleaner/core/data/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/j;->c:Lcom/piriform/ccleaner/core/data/j;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/core/data/j;

    sget-object v1, Lcom/piriform/ccleaner/core/data/j;->a:Lcom/piriform/ccleaner/core/data/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/core/data/j;->b:Lcom/piriform/ccleaner/core/data/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/core/data/j;->c:Lcom/piriform/ccleaner/core/data/j;

    aput-object v1, v0, v5

    sput-object v0, Lcom/piriform/ccleaner/core/data/j;->f:[Lcom/piriform/ccleaner/core/data/j;

    .line 13
    new-instance v0, Lcom/piriform/ccleaner/core/j;

    const-class v1, Lcom/piriform/ccleaner/core/data/j;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/core/j;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/j;->d:Lcom/piriform/ccleaner/core/j;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/piriform/ccleaner/core/data/j;->e:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/core/data/j;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/piriform/ccleaner/core/data/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/j;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/core/data/j;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/piriform/ccleaner/core/data/j;->f:[Lcom/piriform/ccleaner/core/data/j;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/core/data/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/core/data/j;

    return-object v0
.end method


# virtual methods
.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    .line 1022
    iget v0, p0, Lcom/piriform/ccleaner/core/data/j;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7
    return-object v0
.end method
