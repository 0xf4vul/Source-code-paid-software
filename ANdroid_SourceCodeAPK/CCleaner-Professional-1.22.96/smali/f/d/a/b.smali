.class public final enum Lf/d/a/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lf/d/a/b;",
        ">;",
        "Lf/d$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lf/d/a/b;

.field static final b:Lf/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lf/d/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lf/d/a/b;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1}, Lf/d/a/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf/d/a/b;->a:Lf/d/a/b;

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Lf/d/a/b;

    const/4 v1, 0x0

    sget-object v2, Lf/d/a/b;->a:Lf/d/a/b;

    aput-object v2, v0, v1

    sput-object v0, Lf/d/a/b;->c:[Lf/d/a/b;

    .line 31
    sget-object v0, Lf/d/a/b;->a:Lf/d/a/b;

    invoke-static {v0}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    sput-object v0, Lf/d/a/b;->b:Lf/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lf/d/a/b;->b:Lf/d;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lf/d/a/b;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lf/d/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lf/d/a/b;

    return-object v0
.end method

.method public static values()[Lf/d/a/b;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lf/d/a/b;->c:[Lf/d/a/b;

    invoke-virtual {v0}, [Lf/d/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/d/a/b;

    return-object v0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lf/i;

    .line 1046
    invoke-virtual {p1}, Lf/i;->onCompleted()V

    .line 26
    return-void
.end method
