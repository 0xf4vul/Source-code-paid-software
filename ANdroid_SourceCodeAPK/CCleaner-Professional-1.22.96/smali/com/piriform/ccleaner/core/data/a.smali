.class public final enum Lcom/piriform/ccleaner/core/data/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/core/data/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/core/data/a;

.field public static final enum b:Lcom/piriform/ccleaner/core/data/a;

.field public static final enum c:Lcom/piriform/ccleaner/core/data/a;

.field public static final enum d:Lcom/piriform/ccleaner/core/data/a;

.field public static final enum e:Lcom/piriform/ccleaner/core/data/a;

.field private static final synthetic g:[Lcom/piriform/ccleaner/core/data/a;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/piriform/ccleaner/core/data/a;

    const-string/jumbo v1, "INSTALLED_LATEST"

    const v2, 0x7f080068

    invoke-direct {v0, v1, v3, v2}, Lcom/piriform/ccleaner/core/data/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/a;->a:Lcom/piriform/ccleaner/core/data/a;

    .line 7
    new-instance v0, Lcom/piriform/ccleaner/core/data/a;

    const-string/jumbo v1, "INSTALLED_OLDER"

    const v2, 0x7f08006a

    invoke-direct {v0, v1, v4, v2}, Lcom/piriform/ccleaner/core/data/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/a;->b:Lcom/piriform/ccleaner/core/data/a;

    .line 8
    new-instance v0, Lcom/piriform/ccleaner/core/data/a;

    const-string/jumbo v1, "INSTALLED_NEWER"

    const v2, 0x7f080069

    invoke-direct {v0, v1, v5, v2}, Lcom/piriform/ccleaner/core/data/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/a;->c:Lcom/piriform/ccleaner/core/data/a;

    .line 9
    new-instance v0, Lcom/piriform/ccleaner/core/data/a;

    const-string/jumbo v1, "NOT_INSTALLED"

    const v2, 0x7f08006b

    invoke-direct {v0, v1, v6, v2}, Lcom/piriform/ccleaner/core/data/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/a;->d:Lcom/piriform/ccleaner/core/data/a;

    .line 10
    new-instance v0, Lcom/piriform/ccleaner/core/data/a;

    const-string/jumbo v1, "CORRUPTED"

    const v2, 0x7f080067

    invoke-direct {v0, v1, v7, v2}, Lcom/piriform/ccleaner/core/data/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/a;->e:Lcom/piriform/ccleaner/core/data/a;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/piriform/ccleaner/core/data/a;

    sget-object v1, Lcom/piriform/ccleaner/core/data/a;->a:Lcom/piriform/ccleaner/core/data/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/core/data/a;->b:Lcom/piriform/ccleaner/core/data/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/core/data/a;->c:Lcom/piriform/ccleaner/core/data/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/core/data/a;->d:Lcom/piriform/ccleaner/core/data/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/piriform/ccleaner/core/data/a;->e:Lcom/piriform/ccleaner/core/data/a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/piriform/ccleaner/core/data/a;->g:[Lcom/piriform/ccleaner/core/data/a;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/piriform/ccleaner/core/data/a;->f:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/core/data/a;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/piriform/ccleaner/core/data/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/core/data/a;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/piriform/ccleaner/core/data/a;->g:[Lcom/piriform/ccleaner/core/data/a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/core/data/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/core/data/a;

    return-object v0
.end method
