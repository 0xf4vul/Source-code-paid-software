.class final Lcom/piriform/ccleaner/ui/a/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Lcom/piriform/ccleaner/ui/a/f;

.field e:I

.field f:I

.field g:I

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/professional/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/piriform/ccleaner/ui/a/f;)V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/i$a;->h:Ljava/util/List;

    .line 168
    iput p1, p0, Lcom/piriform/ccleaner/ui/a/i$a;->a:I

    .line 169
    iput p2, p0, Lcom/piriform/ccleaner/ui/a/i$a;->b:I

    .line 170
    iput-object p3, p0, Lcom/piriform/ccleaner/ui/a/i$a;->c:Ljava/lang/String;

    .line 171
    iput-object p4, p0, Lcom/piriform/ccleaner/ui/a/i$a;->d:Lcom/piriform/ccleaner/ui/a/f;

    .line 172
    return-void
.end method


# virtual methods
.method public final varargs a([Lcom/piriform/ccleaner/professional/m;)Lcom/piriform/ccleaner/ui/a/i$a;
    .locals 1

    .prologue
    .line 190
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/i$a;->h:Ljava/util/List;

    .line 191
    return-object p0
.end method

.method public final a()Lcom/piriform/ccleaner/ui/a/i;
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/piriform/ccleaner/ui/a/i;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/a/i;-><init>(Lcom/piriform/ccleaner/ui/a/i$a;)V

    return-object v0
.end method
