.class final enum Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

.field public static final enum b:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

.field public static final enum c:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

.field private static final synthetic f:[Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;


# instance fields
.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 221
    new-instance v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    const-string/jumbo v1, "ADD_FILE"

    const v2, 0x7f080039

    const v3, 0x7f080038

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->a:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    .line 222
    new-instance v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    const-string/jumbo v1, "ADD_FOLDER"

    const v2, 0x7f08003b

    const v3, 0x7f08003a

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->b:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    .line 223
    new-instance v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    const-string/jumbo v1, "SAVE_FOLDER"

    const v2, 0x7f0800fd

    const v3, 0x7f0800fc

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->c:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    .line 220
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    sget-object v1, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->a:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->b:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->c:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->f:[Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 229
    iput p3, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->d:I

    .line 230
    iput p4, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->e:I

    .line 231
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;)I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->d:I

    return v0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;)I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->e:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;
    .locals 1

    .prologue
    .line 220
    const-class v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->f:[Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    return-object v0
.end method
