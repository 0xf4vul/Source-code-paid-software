.class final Lcom/piriform/ccleaner/f/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/f/i;


# instance fields
.field private final b:Lcom/piriform/ccleaner/f/l;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/l;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/piriform/ccleaner/f/g;->b:Lcom/piriform/ccleaner/f/l;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/f/j;)Z
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/piriform/ccleaner/f/g;->b:Lcom/piriform/ccleaner/f/l;

    invoke-virtual {p1, v0}, Lcom/piriform/ccleaner/f/j;->a(Lcom/piriform/ccleaner/f/l;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
