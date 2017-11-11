.class public final enum Lcom/piriform/ccleaner/core/k;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/core/k;",
        ">;",
        "Lcom/piriform/ccleaner/core/f",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/piriform/ccleaner/core/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/core/k;

.field public static final enum b:Lcom/piriform/ccleaner/core/k;

.field public static final enum c:Lcom/piriform/ccleaner/core/k;

.field public static final enum d:Lcom/piriform/ccleaner/core/k;

.field public static final enum e:Lcom/piriform/ccleaner/core/k;

.field public static final enum f:Lcom/piriform/ccleaner/core/k;

.field public static final enum g:Lcom/piriform/ccleaner/core/k;

.field public static final enum h:Lcom/piriform/ccleaner/core/k;

.field public static final enum i:Lcom/piriform/ccleaner/core/k;

.field public static final enum j:Lcom/piriform/ccleaner/core/k;

.field public static final enum k:Lcom/piriform/ccleaner/core/k;

.field private static final m:Lcom/piriform/ccleaner/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/core/j",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/piriform/ccleaner/core/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic n:[Lcom/piriform/ccleaner/core/k;


# instance fields
.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/piriform/ccleaner/core/k;

    const-string/jumbo v1, "ITEM_DATA_CHANGED"

    invoke-direct {v0, v1, v4, v4}, Lcom/piriform/ccleaner/core/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/k;->a:Lcom/piriform/ccleaner/core/k;

    .line 7
    new-instance v0, Lcom/piriform/ccleaner/core/k;

    const-string/jumbo v1, "ITEM_CHECKED"

    invoke-direct {v0, v1, v5, v5}, Lcom/piriform/ccleaner/core/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/k;->b:Lcom/piriform/ccleaner/core/k;

    .line 8
    new-instance v0, Lcom/piriform/ccleaner/core/k;

    const-string/jumbo v1, "ITEM_UNCHECKED"

    invoke-direct {v0, v1, v6, v6}, Lcom/piriform/ccleaner/core/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/k;->c:Lcom/piriform/ccleaner/core/k;

    .line 9
    new-instance v0, Lcom/piriform/ccleaner/core/k;

    const-string/jumbo v1, "MODEL_UPDATED"

    invoke-direct {v0, v1, v7, v7}, Lcom/piriform/ccleaner/core/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/k;->d:Lcom/piriform/ccleaner/core/k;

    .line 10
    new-instance v0, Lcom/piriform/ccleaner/core/k;

    const-string/jumbo v1, "PROGRESS_UPDATED"

    invoke-direct {v0, v1, v8, v8}, Lcom/piriform/ccleaner/core/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/k;->e:Lcom/piriform/ccleaner/core/k;

    .line 11
    new-instance v0, Lcom/piriform/ccleaner/core/k;

    const-string/jumbo v1, "START_ASYNC_TASK"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/k;->f:Lcom/piriform/ccleaner/core/k;

    .line 12
    new-instance v0, Lcom/piriform/ccleaner/core/k;

    const-string/jumbo v1, "END_ASYNC_TASK"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/k;->g:Lcom/piriform/ccleaner/core/k;

    .line 13
    new-instance v0, Lcom/piriform/ccleaner/core/k;

    const-string/jumbo v1, "DATA_UPDATED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/k;->h:Lcom/piriform/ccleaner/core/k;

    .line 14
    new-instance v0, Lcom/piriform/ccleaner/core/k;

    const-string/jumbo v1, "ITEM_DETELED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/k;->i:Lcom/piriform/ccleaner/core/k;

    .line 15
    new-instance v0, Lcom/piriform/ccleaner/core/k;

    const-string/jumbo v1, "ITEM_ADDED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/k;->j:Lcom/piriform/ccleaner/core/k;

    .line 16
    new-instance v0, Lcom/piriform/ccleaner/core/k;

    const-string/jumbo v1, "ITEM_UPDATED"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/k;->k:Lcom/piriform/ccleaner/core/k;

    .line 5
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/piriform/ccleaner/core/k;

    sget-object v1, Lcom/piriform/ccleaner/core/k;->a:Lcom/piriform/ccleaner/core/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/core/k;->b:Lcom/piriform/ccleaner/core/k;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/core/k;->c:Lcom/piriform/ccleaner/core/k;

    aput-object v1, v0, v6

    sget-object v1, Lcom/piriform/ccleaner/core/k;->d:Lcom/piriform/ccleaner/core/k;

    aput-object v1, v0, v7

    sget-object v1, Lcom/piriform/ccleaner/core/k;->e:Lcom/piriform/ccleaner/core/k;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/piriform/ccleaner/core/k;->f:Lcom/piriform/ccleaner/core/k;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/piriform/ccleaner/core/k;->g:Lcom/piriform/ccleaner/core/k;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/piriform/ccleaner/core/k;->h:Lcom/piriform/ccleaner/core/k;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/piriform/ccleaner/core/k;->i:Lcom/piriform/ccleaner/core/k;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/piriform/ccleaner/core/k;->j:Lcom/piriform/ccleaner/core/k;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/piriform/ccleaner/core/k;->k:Lcom/piriform/ccleaner/core/k;

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/core/k;->n:[Lcom/piriform/ccleaner/core/k;

    .line 21
    new-instance v0, Lcom/piriform/ccleaner/core/j;

    const-class v1, Lcom/piriform/ccleaner/core/k;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/core/j;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/piriform/ccleaner/core/k;->m:Lcom/piriform/ccleaner/core/j;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/piriform/ccleaner/core/k;->l:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/core/k;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/piriform/ccleaner/core/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/k;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/core/k;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/piriform/ccleaner/core/k;->n:[Lcom/piriform/ccleaner/core/k;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/core/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/core/k;

    return-object v0
.end method


# virtual methods
.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    .line 1032
    iget v0, p0, Lcom/piriform/ccleaner/core/k;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5
    return-object v0
.end method
