.class final Lcom/piriform/ccleaner/cleaning/advanced/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final failureReporter:Lcom/piriform/ccleaner/cleaning/advanced/ag;

.field private final settingsNavigator:Lcom/piriform/ccleaner/cleaning/advanced/af;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/af;Lcom/piriform/ccleaner/cleaning/advanced/ag;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/f;->settingsNavigator:Lcom/piriform/ccleaner/cleaning/advanced/af;

    .line 15
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/f;->failureReporter:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    .line 16
    return-void
.end method


# virtual methods
.method final walker(Lcom/piriform/ccleaner/cleaning/advanced/ab;Lcom/piriform/ccleaner/cleaning/advanced/e$a;)Lcom/piriform/ccleaner/cleaning/advanced/e;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/s;

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/f;->settingsNavigator:Lcom/piriform/ccleaner/cleaning/advanced/af;

    iget-object v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/f;->failureReporter:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/piriform/ccleaner/cleaning/advanced/s;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/ab;Lcom/piriform/ccleaner/cleaning/advanced/e$a;Lcom/piriform/ccleaner/cleaning/advanced/af;Lcom/piriform/ccleaner/cleaning/advanced/ag;)V

    return-object v0
.end method
