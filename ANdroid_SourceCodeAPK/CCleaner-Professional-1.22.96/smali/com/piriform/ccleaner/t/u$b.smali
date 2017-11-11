.class public final enum Lcom/piriform/ccleaner/t/u$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/t/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/t/u$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/t/u$b;

.field public static final enum b:Lcom/piriform/ccleaner/t/u$b;

.field public static final enum c:Lcom/piriform/ccleaner/t/u$b;

.field public static final enum d:Lcom/piriform/ccleaner/t/u$b;

.field public static final enum e:Lcom/piriform/ccleaner/t/u$b;

.field public static final enum f:Lcom/piriform/ccleaner/t/u$b;

.field private static final synthetic i:[Lcom/piriform/ccleaner/t/u$b;


# instance fields
.field public final g:I

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 35
    new-instance v0, Lcom/piriform/ccleaner/t/u$b;

    const-string/jumbo v1, "PROC_INFO"

    const v2, 0x7f0800de

    const v3, 0x7f0200f6

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/piriform/ccleaner/t/u$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/t/u$b;->a:Lcom/piriform/ccleaner/t/u$b;

    .line 36
    new-instance v0, Lcom/piriform/ccleaner/t/u$b;

    const-string/jumbo v1, "RAM_INFO"

    const v2, 0x7f0800e7

    const v3, 0x7f0200fc

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/piriform/ccleaner/t/u$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/t/u$b;->b:Lcom/piriform/ccleaner/t/u$b;

    .line 37
    new-instance v0, Lcom/piriform/ccleaner/t/u$b;

    const-string/jumbo v1, "ROM_INFO"

    const v2, 0x7f0800ef

    const v3, 0x7f0200fc

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/piriform/ccleaner/t/u$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/t/u$b;->c:Lcom/piriform/ccleaner/t/u$b;

    .line 38
    new-instance v0, Lcom/piriform/ccleaner/t/u$b;

    const-string/jumbo v1, "BATTERY_INFO"

    const v2, 0x7f080071

    const v3, 0x7f0200f3

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/piriform/ccleaner/t/u$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/t/u$b;->d:Lcom/piriform/ccleaner/t/u$b;

    .line 39
    new-instance v0, Lcom/piriform/ccleaner/t/u$b;

    const-string/jumbo v1, "SDCARD_INFO"

    const v2, 0x7f0800fe

    const v3, 0x7f0200fe

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/piriform/ccleaner/t/u$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/t/u$b;->e:Lcom/piriform/ccleaner/t/u$b;

    .line 40
    new-instance v0, Lcom/piriform/ccleaner/t/u$b;

    const-string/jumbo v1, "INTERNAL_STORAGE"

    const/4 v2, 0x5

    const v3, 0x7f0800c0

    const v4, 0x7f0200ff

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/piriform/ccleaner/t/u$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/t/u$b;->f:Lcom/piriform/ccleaner/t/u$b;

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/piriform/ccleaner/t/u$b;

    sget-object v1, Lcom/piriform/ccleaner/t/u$b;->a:Lcom/piriform/ccleaner/t/u$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/t/u$b;->b:Lcom/piriform/ccleaner/t/u$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/piriform/ccleaner/t/u$b;->c:Lcom/piriform/ccleaner/t/u$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/piriform/ccleaner/t/u$b;->d:Lcom/piriform/ccleaner/t/u$b;

    aput-object v1, v0, v8

    sget-object v1, Lcom/piriform/ccleaner/t/u$b;->e:Lcom/piriform/ccleaner/t/u$b;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/piriform/ccleaner/t/u$b;->f:Lcom/piriform/ccleaner/t/u$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/t/u$b;->i:[Lcom/piriform/ccleaner/t/u$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/piriform/ccleaner/t/u$b;->g:I

    .line 47
    iput p4, p0, Lcom/piriform/ccleaner/t/u$b;->h:I

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/t/u$b;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/piriform/ccleaner/t/u$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/u$b;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/t/u$b;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/piriform/ccleaner/t/u$b;->i:[Lcom/piriform/ccleaner/t/u$b;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/t/u$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/t/u$b;

    return-object v0
.end method
