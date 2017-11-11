.class public final Lcom/piriform/ccleaner/j/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b",
        "<",
        "Lcom/piriform/ccleaner/s/o;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/piriform/ccleaner/j/ch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/piriform/ccleaner/j/cl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/j/cl;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/j/ch;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lcom/piriform/ccleaner/j/cl;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/j/cl;->b:Lcom/piriform/ccleaner/j/ch;

    .line 19
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/j/ch;)La/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/ch;",
            ")",
            "La/a/b",
            "<",
            "Lcom/piriform/ccleaner/s/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/piriform/ccleaner/j/cl;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/j/cl;-><init>(Lcom/piriform/ccleaner/j/ch;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1070
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/s/p;

    const/4 v1, 0x0

    sget-object v2, Lcom/piriform/ccleaner/s/p;->a:Lcom/piriform/ccleaner/s/p;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/piriform/ccleaner/s/p;->b:Lcom/piriform/ccleaner/s/p;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/piriform/ccleaner/s/p;->c:Lcom/piriform/ccleaner/s/p;

    aput-object v2, v0, v1

    .line 1071
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2018
    new-instance v1, Lcom/piriform/ccleaner/s/q;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/s/q;-><init>(Ljava/util/List;)V

    .line 1024
    const-string/jumbo v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1023
    invoke-static {v1, v0}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/s/o;

    .line 8
    return-object v0
.end method
