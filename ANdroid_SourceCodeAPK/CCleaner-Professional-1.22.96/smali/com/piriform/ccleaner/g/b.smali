.class public final Lcom/piriform/ccleaner/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/io/File;


# instance fields
.field public final b:Lcom/piriform/ccleaner/f/m;

.field public final c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/g/b;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/g/b;->c:Ljava/util/Deque;

    .line 19
    iput-object p1, p0, Lcom/piriform/ccleaner/g/b;->b:Lcom/piriform/ccleaner/f/m;

    .line 20
    iget-object v0, p0, Lcom/piriform/ccleaner/g/b;->c:Ljava/util/Deque;

    invoke-interface {v0, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 21
    return-void
.end method
