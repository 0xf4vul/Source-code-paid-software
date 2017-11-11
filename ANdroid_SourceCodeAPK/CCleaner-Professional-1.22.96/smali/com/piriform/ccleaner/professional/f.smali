.class public final Lcom/piriform/ccleaner/professional/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/piriform/ccleaner/i/c;

.field final b:Lcom/piriform/ccleaner/i/d;

.field private final c:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/i/d;Lcom/piriform/ccleaner/i/c;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/piriform/ccleaner/professional/f;->a:Lcom/piriform/ccleaner/i/c;

    .line 40
    iput-object p3, p0, Lcom/piriform/ccleaner/professional/f;->c:Ljava/lang/Exception;

    .line 41
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/f;->b:Lcom/piriform/ccleaner/i/d;

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/f;->b:Lcom/piriform/ccleaner/i/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
