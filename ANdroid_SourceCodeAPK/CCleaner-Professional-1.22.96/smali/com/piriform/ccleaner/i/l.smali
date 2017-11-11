.class public final enum Lcom/piriform/ccleaner/i/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/i/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/i/l;

.field public static final enum b:Lcom/piriform/ccleaner/i/l;

.field public static final enum c:Lcom/piriform/ccleaner/i/l;

.field public static final enum d:Lcom/piriform/ccleaner/i/l;

.field private static final synthetic g:[Lcom/piriform/ccleaner/i/l;


# instance fields
.field public e:Lcom/piriform/ccleaner/b/b;

.field public f:Lcom/piriform/ccleaner/professional/m;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/piriform/ccleaner/i/l;

    const-string/jumbo v1, "SUCCESSFUL"

    sget-object v2, Lcom/piriform/ccleaner/b/b;->az:Lcom/piriform/ccleaner/b/b;

    sget-object v3, Lcom/piriform/ccleaner/professional/m;->a:Lcom/piriform/ccleaner/professional/m;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/piriform/ccleaner/i/l;-><init>(Ljava/lang/String;ILcom/piriform/ccleaner/b/b;Lcom/piriform/ccleaner/professional/m;)V

    sput-object v0, Lcom/piriform/ccleaner/i/l;->a:Lcom/piriform/ccleaner/i/l;

    .line 12
    new-instance v0, Lcom/piriform/ccleaner/i/l;

    const-string/jumbo v1, "CANCELLED"

    sget-object v2, Lcom/piriform/ccleaner/b/b;->aA:Lcom/piriform/ccleaner/b/b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/piriform/ccleaner/i/l;-><init>(Ljava/lang/String;ILcom/piriform/ccleaner/b/b;Lcom/piriform/ccleaner/professional/m;)V

    sput-object v0, Lcom/piriform/ccleaner/i/l;->b:Lcom/piriform/ccleaner/i/l;

    .line 13
    new-instance v0, Lcom/piriform/ccleaner/i/l;

    const-string/jumbo v1, "RETRYABLE_ERROR"

    sget-object v2, Lcom/piriform/ccleaner/b/b;->aB:Lcom/piriform/ccleaner/b/b;

    sget-object v3, Lcom/piriform/ccleaner/professional/m;->c:Lcom/piriform/ccleaner/professional/m;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/piriform/ccleaner/i/l;-><init>(Ljava/lang/String;ILcom/piriform/ccleaner/b/b;Lcom/piriform/ccleaner/professional/m;)V

    sput-object v0, Lcom/piriform/ccleaner/i/l;->c:Lcom/piriform/ccleaner/i/l;

    .line 14
    new-instance v0, Lcom/piriform/ccleaner/i/l;

    const-string/jumbo v1, "PERMANENT_ERROR"

    sget-object v2, Lcom/piriform/ccleaner/b/b;->aC:Lcom/piriform/ccleaner/b/b;

    sget-object v3, Lcom/piriform/ccleaner/professional/m;->e:Lcom/piriform/ccleaner/professional/m;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/piriform/ccleaner/i/l;-><init>(Ljava/lang/String;ILcom/piriform/ccleaner/b/b;Lcom/piriform/ccleaner/professional/m;)V

    sput-object v0, Lcom/piriform/ccleaner/i/l;->d:Lcom/piriform/ccleaner/i/l;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/piriform/ccleaner/i/l;

    sget-object v1, Lcom/piriform/ccleaner/i/l;->a:Lcom/piriform/ccleaner/i/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/i/l;->b:Lcom/piriform/ccleaner/i/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/i/l;->c:Lcom/piriform/ccleaner/i/l;

    aput-object v1, v0, v6

    sget-object v1, Lcom/piriform/ccleaner/i/l;->d:Lcom/piriform/ccleaner/i/l;

    aput-object v1, v0, v7

    sput-object v0, Lcom/piriform/ccleaner/i/l;->g:[Lcom/piriform/ccleaner/i/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/piriform/ccleaner/b/b;Lcom/piriform/ccleaner/professional/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/b/b;",
            "Lcom/piriform/ccleaner/professional/m;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/piriform/ccleaner/i/l;->e:Lcom/piriform/ccleaner/b/b;

    .line 45
    iput-object p4, p0, Lcom/piriform/ccleaner/i/l;->f:Lcom/piriform/ccleaner/professional/m;

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/Integer;)Lcom/piriform/ccleaner/i/l;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 39
    sget-object v0, Lcom/piriform/ccleaner/i/l;->c:Lcom/piriform/ccleaner/i/l;

    :goto_0
    return-object v0

    .line 23
    :sswitch_0
    sget-object v0, Lcom/piriform/ccleaner/i/l;->a:Lcom/piriform/ccleaner/i/l;

    goto :goto_0

    .line 26
    :sswitch_1
    sget-object v0, Lcom/piriform/ccleaner/i/l;->b:Lcom/piriform/ccleaner/i/l;

    goto :goto_0

    .line 32
    :sswitch_2
    sget-object v0, Lcom/piriform/ccleaner/i/l;->c:Lcom/piriform/ccleaner/i/l;

    goto :goto_0

    .line 36
    :sswitch_3
    sget-object v0, Lcom/piriform/ccleaner/i/l;->d:Lcom/piriform/ccleaner/i/l;

    goto :goto_0

    .line 20
    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_2
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/i/l;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/piriform/ccleaner/i/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/i/l;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/i/l;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/piriform/ccleaner/i/l;->g:[Lcom/piriform/ccleaner/i/l;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/i/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/i/l;

    return-object v0
.end method
