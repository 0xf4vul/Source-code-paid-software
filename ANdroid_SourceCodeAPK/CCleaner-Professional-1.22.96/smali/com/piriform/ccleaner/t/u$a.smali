.class public final enum Lcom/piriform/ccleaner/t/u$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/t/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/t/u$a;",
        ">;",
        "Lcom/piriform/ccleaner/core/f",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/piriform/ccleaner/t/u$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/t/u$a;

.field public static final enum b:Lcom/piriform/ccleaner/t/u$a;

.field public static final enum c:Lcom/piriform/ccleaner/t/u$a;

.field private static final d:Lcom/piriform/ccleaner/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/core/j",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/piriform/ccleaner/t/u$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/piriform/ccleaner/t/u$a;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/piriform/ccleaner/t/u$a;

    const-string/jumbo v1, "HARDWARE"

    invoke-direct {v0, v1, v2, v2}, Lcom/piriform/ccleaner/t/u$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/t/u$a;->a:Lcom/piriform/ccleaner/t/u$a;

    new-instance v0, Lcom/piriform/ccleaner/t/u$a;

    const-string/jumbo v1, "STORAGE"

    invoke-direct {v0, v1, v3, v3}, Lcom/piriform/ccleaner/t/u$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/t/u$a;->b:Lcom/piriform/ccleaner/t/u$a;

    new-instance v0, Lcom/piriform/ccleaner/t/u$a;

    const-string/jumbo v1, "BATTERY"

    invoke-direct {v0, v1, v4, v4}, Lcom/piriform/ccleaner/t/u$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/t/u$a;->c:Lcom/piriform/ccleaner/t/u$a;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/t/u$a;

    sget-object v1, Lcom/piriform/ccleaner/t/u$a;->a:Lcom/piriform/ccleaner/t/u$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/piriform/ccleaner/t/u$a;->b:Lcom/piriform/ccleaner/t/u$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/t/u$a;->c:Lcom/piriform/ccleaner/t/u$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/piriform/ccleaner/t/u$a;->f:[Lcom/piriform/ccleaner/t/u$a;

    .line 63
    new-instance v0, Lcom/piriform/ccleaner/core/j;

    const-class v1, Lcom/piriform/ccleaner/t/u$a;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/core/j;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/piriform/ccleaner/t/u$a;->d:Lcom/piriform/ccleaner/core/j;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/piriform/ccleaner/t/u$a;->e:I

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/t/u$a;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/piriform/ccleaner/t/u$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/u$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/t/u$a;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/piriform/ccleaner/t/u$a;->f:[Lcom/piriform/ccleaner/t/u$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/t/u$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/t/u$a;

    return-object v0
.end method


# virtual methods
.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    .line 1072
    iget v0, p0, Lcom/piriform/ccleaner/t/u$a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 61
    return-object v0
.end method
