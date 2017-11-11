.class public final enum Lcom/piriform/ccleaner/ui/fragment/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/ui/fragment/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/ui/fragment/e;

.field public static final enum b:Lcom/piriform/ccleaner/ui/fragment/e;

.field public static final enum c:Lcom/piriform/ccleaner/ui/fragment/e;

.field public static final enum d:Lcom/piriform/ccleaner/ui/fragment/e;

.field private static final synthetic g:[Lcom/piriform/ccleaner/ui/fragment/e;


# instance fields
.field final e:I

.field final f:Lcom/piriform/ccleaner/core/data/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/e;

    const-string/jumbo v1, "ALL"

    const v2, 0x7f080059

    sget-object v3, Lcom/piriform/ccleaner/core/data/e;->a:Lcom/piriform/ccleaner/core/data/e;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/piriform/ccleaner/ui/fragment/e;-><init>(Ljava/lang/String;IILcom/piriform/ccleaner/core/data/e;)V

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/e;->a:Lcom/piriform/ccleaner/ui/fragment/e;

    .line 12
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/e;

    const-string/jumbo v1, "INCOMING"

    const v2, 0x7f0800be

    sget-object v3, Lcom/piriform/ccleaner/core/data/e;->c:Lcom/piriform/ccleaner/core/data/e;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/piriform/ccleaner/ui/fragment/e;-><init>(Ljava/lang/String;IILcom/piriform/ccleaner/core/data/e;)V

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/e;->b:Lcom/piriform/ccleaner/ui/fragment/e;

    .line 13
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/e;

    const-string/jumbo v1, "OUTGOING"

    const v2, 0x7f0800d9

    sget-object v3, Lcom/piriform/ccleaner/core/data/e;->b:Lcom/piriform/ccleaner/core/data/e;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/piriform/ccleaner/ui/fragment/e;-><init>(Ljava/lang/String;IILcom/piriform/ccleaner/core/data/e;)V

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/e;->c:Lcom/piriform/ccleaner/ui/fragment/e;

    .line 14
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/e;

    const-string/jumbo v1, "MISSED"

    const v2, 0x7f0800cd

    sget-object v3, Lcom/piriform/ccleaner/core/data/e;->d:Lcom/piriform/ccleaner/core/data/e;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/piriform/ccleaner/ui/fragment/e;-><init>(Ljava/lang/String;IILcom/piriform/ccleaner/core/data/e;)V

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/e;->d:Lcom/piriform/ccleaner/ui/fragment/e;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/piriform/ccleaner/ui/fragment/e;

    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/e;->a:Lcom/piriform/ccleaner/ui/fragment/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/e;->b:Lcom/piriform/ccleaner/ui/fragment/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/e;->c:Lcom/piriform/ccleaner/ui/fragment/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/e;->d:Lcom/piriform/ccleaner/ui/fragment/e;

    aput-object v1, v0, v7

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/e;->g:[Lcom/piriform/ccleaner/ui/fragment/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/piriform/ccleaner/core/data/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/piriform/ccleaner/core/data/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/piriform/ccleaner/ui/fragment/e;->e:I

    .line 21
    iput-object p4, p0, Lcom/piriform/ccleaner/ui/fragment/e;->f:Lcom/piriform/ccleaner/core/data/e;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/ui/fragment/e;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/piriform/ccleaner/ui/fragment/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/fragment/e;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/ui/fragment/e;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/e;->g:[Lcom/piriform/ccleaner/ui/fragment/e;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/ui/fragment/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/ui/fragment/e;

    return-object v0
.end method
