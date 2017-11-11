.class public final enum Lcom/piriform/ccleaner/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/g;

.field public static final enum b:Lcom/piriform/ccleaner/g;

.field public static final enum c:Lcom/piriform/ccleaner/g;

.field public static final enum d:Lcom/piriform/ccleaner/g;

.field private static final synthetic f:[Lcom/piriform/ccleaner/g;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/piriform/ccleaner/g;

    const-string/jumbo v1, "NEVER"

    const v2, 0x7f0e005e

    invoke-direct {v0, v1, v3, v2}, Lcom/piriform/ccleaner/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/g;->a:Lcom/piriform/ccleaner/g;

    .line 9
    new-instance v0, Lcom/piriform/ccleaner/g;

    const-string/jumbo v1, "TODAY"

    const v2, 0x7f0e005b

    invoke-direct {v0, v1, v4, v2}, Lcom/piriform/ccleaner/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/g;->b:Lcom/piriform/ccleaner/g;

    .line 10
    new-instance v0, Lcom/piriform/ccleaner/g;

    const-string/jumbo v1, "THIS_WEEK"

    const v2, 0x7f0e005c

    invoke-direct {v0, v1, v5, v2}, Lcom/piriform/ccleaner/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/g;->c:Lcom/piriform/ccleaner/g;

    .line 11
    new-instance v0, Lcom/piriform/ccleaner/g;

    const-string/jumbo v1, "OLDER_THAN_A_WEEK"

    const v2, 0x7f0e005d

    invoke-direct {v0, v1, v6, v2}, Lcom/piriform/ccleaner/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/g;->d:Lcom/piriform/ccleaner/g;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/piriform/ccleaner/g;

    sget-object v1, Lcom/piriform/ccleaner/g;->a:Lcom/piriform/ccleaner/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/g;->b:Lcom/piriform/ccleaner/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/g;->c:Lcom/piriform/ccleaner/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/g;->d:Lcom/piriform/ccleaner/g;

    aput-object v1, v0, v6

    sput-object v0, Lcom/piriform/ccleaner/g;->f:[Lcom/piriform/ccleaner/g;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/piriform/ccleaner/g;->e:I

    .line 37
    return-void
.end method

.method public static a(J)Lcom/piriform/ccleaner/g;
    .locals 4

    .prologue
    .line 19
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 20
    sget-object v0, Lcom/piriform/ccleaner/g;->a:Lcom/piriform/ccleaner/g;

    .line 30
    :goto_0
    return-object v0

    .line 23
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    .line 25
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 26
    sget-object v0, Lcom/piriform/ccleaner/g;->b:Lcom/piriform/ccleaner/g;

    goto :goto_0

    .line 27
    :cond_1
    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 28
    sget-object v0, Lcom/piriform/ccleaner/g;->c:Lcom/piriform/ccleaner/g;

    goto :goto_0

    .line 30
    :cond_2
    sget-object v0, Lcom/piriform/ccleaner/g;->d:Lcom/piriform/ccleaner/g;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/g;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/piriform/ccleaner/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/g;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/g;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/piriform/ccleaner/g;->f:[Lcom/piriform/ccleaner/g;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/g;

    return-object v0
.end method
