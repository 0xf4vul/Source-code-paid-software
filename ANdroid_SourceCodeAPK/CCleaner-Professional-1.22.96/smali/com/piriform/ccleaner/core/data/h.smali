.class public final enum Lcom/piriform/ccleaner/core/data/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/core/data/h;",
        ">;",
        "Lcom/piriform/ccleaner/core/f",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/piriform/ccleaner/core/data/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/core/data/h;

.field public static final enum b:Lcom/piriform/ccleaner/core/data/h;

.field public static final enum c:Lcom/piriform/ccleaner/core/data/h;

.field public static final enum d:Lcom/piriform/ccleaner/core/data/h;

.field public static final enum e:Lcom/piriform/ccleaner/core/data/h;

.field public static final enum f:Lcom/piriform/ccleaner/core/data/h;

.field public static final enum g:Lcom/piriform/ccleaner/core/data/h;

.field private static final i:Lcom/piriform/ccleaner/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/core/j",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/piriform/ccleaner/core/data/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic j:[Lcom/piriform/ccleaner/core/data/h;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 9
    new-instance v0, Lcom/piriform/ccleaner/core/data/h;

    const-string/jumbo v1, "ALL"

    const/4 v2, 0x0

    sget-object v3, Lcom/piriform/ccleaner/core/g;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/data/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/h;->a:Lcom/piriform/ccleaner/core/data/h;

    .line 10
    new-instance v0, Lcom/piriform/ccleaner/core/data/h;

    const-string/jumbo v1, "SENT_MESSAGE"

    invoke-direct {v0, v1, v4, v5}, Lcom/piriform/ccleaner/core/data/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/h;->b:Lcom/piriform/ccleaner/core/data/h;

    .line 11
    new-instance v0, Lcom/piriform/ccleaner/core/data/h;

    const-string/jumbo v1, "RECEIVED_MESSAGE"

    invoke-direct {v0, v1, v5, v4}, Lcom/piriform/ccleaner/core/data/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/h;->c:Lcom/piriform/ccleaner/core/data/h;

    .line 12
    new-instance v0, Lcom/piriform/ccleaner/core/data/h;

    const-string/jumbo v1, "DRAFT_MESSAGE"

    invoke-direct {v0, v1, v6, v6}, Lcom/piriform/ccleaner/core/data/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/h;->d:Lcom/piriform/ccleaner/core/data/h;

    .line 13
    new-instance v0, Lcom/piriform/ccleaner/core/data/h;

    const-string/jumbo v1, "OUTBOX_MESSAGE"

    invoke-direct {v0, v1, v7, v7}, Lcom/piriform/ccleaner/core/data/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/h;->e:Lcom/piriform/ccleaner/core/data/h;

    .line 14
    new-instance v0, Lcom/piriform/ccleaner/core/data/h;

    const-string/jumbo v1, "FAILED_MESSAGE"

    invoke-direct {v0, v1, v8, v8}, Lcom/piriform/ccleaner/core/data/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/h;->f:Lcom/piriform/ccleaner/core/data/h;

    .line 15
    new-instance v0, Lcom/piriform/ccleaner/core/data/h;

    const-string/jumbo v1, "QUEUED_MESSAGE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/core/data/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/h;->g:Lcom/piriform/ccleaner/core/data/h;

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/piriform/ccleaner/core/data/h;

    const/4 v1, 0x0

    sget-object v2, Lcom/piriform/ccleaner/core/data/h;->a:Lcom/piriform/ccleaner/core/data/h;

    aput-object v2, v0, v1

    sget-object v1, Lcom/piriform/ccleaner/core/data/h;->b:Lcom/piriform/ccleaner/core/data/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/core/data/h;->c:Lcom/piriform/ccleaner/core/data/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/core/data/h;->d:Lcom/piriform/ccleaner/core/data/h;

    aput-object v1, v0, v6

    sget-object v1, Lcom/piriform/ccleaner/core/data/h;->e:Lcom/piriform/ccleaner/core/data/h;

    aput-object v1, v0, v7

    sget-object v1, Lcom/piriform/ccleaner/core/data/h;->f:Lcom/piriform/ccleaner/core/data/h;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/piriform/ccleaner/core/data/h;->g:Lcom/piriform/ccleaner/core/data/h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/core/data/h;->j:[Lcom/piriform/ccleaner/core/data/h;

    .line 17
    new-instance v0, Lcom/piriform/ccleaner/core/j;

    const-class v1, Lcom/piriform/ccleaner/core/data/h;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/core/j;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/piriform/ccleaner/core/data/h;->i:Lcom/piriform/ccleaner/core/j;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/piriform/ccleaner/core/data/h;->h:I

    .line 22
    return-void
.end method

.method public static a(I)Lcom/piriform/ccleaner/core/data/h;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/piriform/ccleaner/core/data/h;->i:Lcom/piriform/ccleaner/core/j;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/j;->a(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/h;

    .line 1043
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 36
    :goto_0
    if-eqz v1, :cond_1

    .line 39
    :goto_1
    return-object v0

    .line 1043
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lcom/piriform/ccleaner/core/data/h;->a:Lcom/piriform/ccleaner/core/data/h;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/core/data/h;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/piriform/ccleaner/core/data/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/h;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/core/data/h;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/piriform/ccleaner/core/data/h;->j:[Lcom/piriform/ccleaner/core/data/h;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/core/data/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/core/data/h;

    return-object v0
.end method


# virtual methods
.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    .line 2026
    iget v0, p0, Lcom/piriform/ccleaner/core/data/h;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7
    return-object v0
.end method
