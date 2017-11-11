.class final Landroid/support/design/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/s$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/s$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/design/widget/s$a;

.field c:Landroid/support/design/widget/v;

.field private final d:Landroid/support/design/widget/v$a;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/s;->a:Ljava/util/ArrayList;

    .line 27
    iput-object v1, p0, Landroid/support/design/widget/s;->b:Landroid/support/design/widget/s$a;

    .line 28
    iput-object v1, p0, Landroid/support/design/widget/s;->c:Landroid/support/design/widget/v;

    .line 30
    new-instance v0, Landroid/support/design/widget/s$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/s$1;-><init>(Landroid/support/design/widget/s;)V

    iput-object v0, p0, Landroid/support/design/widget/s;->d:Landroid/support/design/widget/v$a;

    .line 104
    return-void
.end method


# virtual methods
.method public final a([ILandroid/support/design/widget/v;)V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/support/design/widget/s$a;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/s$a;-><init>([ILandroid/support/design/widget/v;)V

    .line 49
    iget-object v1, p0, Landroid/support/design/widget/s;->d:Landroid/support/design/widget/v$a;

    invoke-virtual {p2, v1}, Landroid/support/design/widget/v;->a(Landroid/support/design/widget/v$a;)V

    .line 50
    iget-object v1, p0, Landroid/support/design/widget/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method
