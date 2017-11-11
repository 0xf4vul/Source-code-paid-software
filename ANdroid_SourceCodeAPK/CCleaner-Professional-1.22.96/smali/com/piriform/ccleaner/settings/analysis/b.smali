.class public final enum Lcom/piriform/ccleaner/settings/analysis/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/settings/analysis/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/settings/analysis/b;

.field public static final enum b:Lcom/piriform/ccleaner/settings/analysis/b;

.field public static final enum c:Lcom/piriform/ccleaner/settings/analysis/b;

.field private static final synthetic h:[Lcom/piriform/ccleaner/settings/analysis/b;


# instance fields
.field final d:Lcom/piriform/ccleaner/cleaning/g;

.field final e:I

.field final f:I

.field final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const v9, 0x7f080081

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/piriform/ccleaner/settings/analysis/b;

    const-string/jumbo v1, "MAIN_CLEAN"

    sget-object v3, Lcom/piriform/ccleaner/cleaning/g;->a:Lcom/piriform/ccleaner/cleaning/g;

    const v4, 0x7f08009a

    const v5, 0x7f080099

    const v6, 0x7f080082

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/settings/analysis/b;-><init>(Ljava/lang/String;ILcom/piriform/ccleaner/cleaning/g;III)V

    sput-object v0, Lcom/piriform/ccleaner/settings/analysis/b;->a:Lcom/piriform/ccleaner/settings/analysis/b;

    .line 16
    new-instance v3, Lcom/piriform/ccleaner/settings/analysis/b;

    const-string/jumbo v4, "QUICK_CLEAN"

    sget-object v6, Lcom/piriform/ccleaner/cleaning/g;->b:Lcom/piriform/ccleaner/cleaning/g;

    const v7, 0x7f0800e4

    const v8, 0x7f0800e3

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/piriform/ccleaner/settings/analysis/b;-><init>(Ljava/lang/String;ILcom/piriform/ccleaner/cleaning/g;III)V

    sput-object v3, Lcom/piriform/ccleaner/settings/analysis/b;->b:Lcom/piriform/ccleaner/settings/analysis/b;

    .line 22
    new-instance v3, Lcom/piriform/ccleaner/settings/analysis/b;

    const-string/jumbo v4, "SCHEDULED_CLEAN"

    sget-object v6, Lcom/piriform/ccleaner/cleaning/g;->c:Lcom/piriform/ccleaner/cleaning/g;

    const v7, 0x7f08014c

    const v8, 0x7f0801a9

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/piriform/ccleaner/settings/analysis/b;-><init>(Ljava/lang/String;ILcom/piriform/ccleaner/cleaning/g;III)V

    sput-object v3, Lcom/piriform/ccleaner/settings/analysis/b;->c:Lcom/piriform/ccleaner/settings/analysis/b;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/settings/analysis/b;

    sget-object v1, Lcom/piriform/ccleaner/settings/analysis/b;->a:Lcom/piriform/ccleaner/settings/analysis/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/piriform/ccleaner/settings/analysis/b;->b:Lcom/piriform/ccleaner/settings/analysis/b;

    aput-object v1, v0, v10

    sget-object v1, Lcom/piriform/ccleaner/settings/analysis/b;->c:Lcom/piriform/ccleaner/settings/analysis/b;

    aput-object v1, v0, v11

    sput-object v0, Lcom/piriform/ccleaner/settings/analysis/b;->h:[Lcom/piriform/ccleaner/settings/analysis/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/piriform/ccleaner/cleaning/g;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/cleaning/g;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/piriform/ccleaner/settings/analysis/b;->d:Lcom/piriform/ccleaner/cleaning/g;

    .line 54
    iput p4, p0, Lcom/piriform/ccleaner/settings/analysis/b;->e:I

    .line 55
    iput p5, p0, Lcom/piriform/ccleaner/settings/analysis/b;->f:I

    .line 56
    iput p6, p0, Lcom/piriform/ccleaner/settings/analysis/b;->g:I

    .line 57
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/piriform/ccleaner/settings/analysis/b;)Lcom/piriform/ccleaner/settings/analysis/b;
    .locals 6

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/piriform/ccleaner/cleaning/g;->a(Ljava/lang/String;Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/cleaning/g;

    move-result-object v2

    .line 45
    if-nez v2, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-object p1

    .line 1035
    :cond_1
    invoke-static {}, Lcom/piriform/ccleaner/settings/analysis/b;->values()[Lcom/piriform/ccleaner/settings/analysis/b;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 1036
    iget-object v5, v0, Lcom/piriform/ccleaner/settings/analysis/b;->d:Lcom/piriform/ccleaner/cleaning/g;

    if-ne v5, v2, :cond_2

    move-object p1, v0

    .line 1037
    goto :goto_0

    .line 1035
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/settings/analysis/b;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/piriform/ccleaner/settings/analysis/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/settings/analysis/b;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/settings/analysis/b;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/piriform/ccleaner/settings/analysis/b;->h:[Lcom/piriform/ccleaner/settings/analysis/b;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/settings/analysis/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/settings/analysis/b;

    return-object v0
.end method
