.class public final Lb/a/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field b:Z

.field public c:Ljava/lang/String;

.field d:Z

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/a/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Lb/a/a/e$a;

.field h:Lb/a/a/e$a;

.field i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput-object v1, p0, Lb/a/a/b$a;->a:Landroid/os/Handler;

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/b$a;->b:Z

    .line 619
    const-string/jumbo v0, "sh"

    iput-object v0, p0, Lb/a/a/b$a;->c:Ljava/lang/String;

    .line 620
    iput-boolean v2, p0, Lb/a/a/b$a;->d:Z

    .line 621
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lb/a/a/b$a;->e:Ljava/util/List;

    .line 622
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/b$a;->f:Ljava/util/Map;

    .line 623
    iput-object v1, p0, Lb/a/a/b$a;->g:Lb/a/a/e$a;

    .line 624
    iput-object v1, p0, Lb/a/a/b$a;->h:Lb/a/a/e$a;

    .line 625
    iput v2, p0, Lb/a/a/b$a;->i:I

    return-void
.end method
