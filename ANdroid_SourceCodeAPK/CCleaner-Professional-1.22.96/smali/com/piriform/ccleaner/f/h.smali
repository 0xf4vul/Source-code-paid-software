.class public final Lcom/piriform/ccleaner/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/piriform/ccleaner/f/h;

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/f/h;->e:Ljava/util/List;

    .line 12
    new-instance v0, Lcom/piriform/ccleaner/f/h;

    const-wide/16 v2, 0x0

    sget-object v1, Lcom/piriform/ccleaner/f/h;->e:Ljava/util/List;

    sget-object v4, Lcom/piriform/ccleaner/f/h;->e:Ljava/util/List;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/piriform/ccleaner/f/h;-><init>(JLjava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/piriform/ccleaner/f/h;->a:Lcom/piriform/ccleaner/f/h;

    return-void
.end method

.method public constructor <init>(JLjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/piriform/ccleaner/f/h;->b:J

    .line 24
    iput-object p3, p0, Lcom/piriform/ccleaner/f/h;->c:Ljava/util/List;

    .line 25
    iput-object p4, p0, Lcom/piriform/ccleaner/f/h;->d:Ljava/util/List;

    .line 26
    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/piriform/ccleaner/f/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;)",
            "Lcom/piriform/ccleaner/f/h;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/piriform/ccleaner/f/h;

    const-wide/16 v2, 0x0

    sget-object v1, Lcom/piriform/ccleaner/f/h;->e:Ljava/util/List;

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/piriform/ccleaner/f/h;-><init>(JLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/piriform/ccleaner/f/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
